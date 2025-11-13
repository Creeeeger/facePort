.class public Lcom/android/settings/vpn2/ConfigDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ConfigDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsUserAddProfilesAllowed:I

.field private mIsUserChangeProfilesAllowed:I

.field private mService:Landroid/net/VpnManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 3

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->save(Lcom/android/internal/net/VpnProfile;Z)V

    .line 282
    iget-object p2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 285
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    .line 288
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 290
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    invoke-virtual {p2, p1}, Landroid/net/VpnManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->vpn_no_network:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method private disconnect(Lcom/android/internal/net/VpnProfile;)Z
    .locals 1

    .line 305
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->isConnected(Lcom/android/internal/net/VpnProfile;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 308
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ConfigDialogFragment"

    const-string v0, "Failed to disconnect"

    .line 310
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isConnected(Lcom/android/internal/net/VpnProfile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 317
    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVpnConnectedOrConnecting()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 323
    iget p0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private save(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/net/VpnProfile;->encode(Z)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    .line 271
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    .line 274
    invoke-direct {p0, p2, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V

    return-void
.end method

.method public static show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "profile"

    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "editing"

    .line 83
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "exists"

    .line 84
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    new-instance p1, Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;-><init>()V

    .line 87
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 88
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string/jumbo p2, "vpnconfigdialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 247
    invoke-virtual {p2}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result p1

    if-nez p1, :cond_0

    .line 248
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->vpn_lockdown_config_error:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    .line 255
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    iget-object p1, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/vpn2/VpnUtils;->setLockdownVpn(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 259
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x221

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 95
    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    .line 96
    const-class v0, Landroid/net/VpnManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/VpnManager;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 240
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Lcom/android/settings/vpn2/ConfigDialog;

    const-string v0, "ConfigDialogFragment"

    if-nez p1, :cond_0

    const-string p0, "ConfigDialog object is null"

    .line 163
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 168
    iget v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserAddProfilesAllowed:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "editing"

    .line 171
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "exists"

    .line 172
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-ne v6, v5, :cond_1

    .line 175
    iget v6, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserAddProfilesAllowed:I

    if-nez v6, :cond_1

    return-void

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ConfigDialog;->isEditing()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 179
    iget v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserChangeProfilesAllowed:I

    if-ne v2, v5, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-nez v2, :cond_3

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :cond_3
    if-ne p2, v3, :cond_9

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getMetricsCategory()I

    move-result p2

    const/16 v2, 0xeb0

    invoke-static {p2, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 193
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ConfigDialog;->isVpnAlwaysOn()Z

    move-result v10

    if-nez v10, :cond_5

    .line 194
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ConfigDialog;->isEditing()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v4

    goto :goto_2

    :cond_5
    :goto_1
    move p1, v5

    .line 195
    :goto_2
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->isAnyLockdownActive(Landroid/content/Context;)Z

    move-result v9

    .line 199
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->isVpnActive(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 200
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->isVpnConnectedOrConnecting()Z

    move-result p2

    if-eqz p2, :cond_6

    move v7, v5

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_3
    if-eqz p1, :cond_7

    .line 202
    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->isConnected(Lcom/android/internal/net/VpnProfile;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 203
    invoke-static {v7, v9, v10}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->shouldShow(ZZZ)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 204
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p1, "profile"

    .line 205
    invoke-virtual {v11, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v6, p0

    move v8, v10

    .line 206
    invoke-static/range {v6 .. v11}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroidx/fragment/app/Fragment;ZZZZLandroid/os/Bundle;)V

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    .line 209
    invoke-direct {p0, v1, v10}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;Z)V

    goto :goto_4

    .line 211
    :cond_8
    invoke-direct {p0, v1, v4}, Lcom/android/settings/vpn2/ConfigDialogFragment;->save(Lcom/android/internal/net/VpnProfile;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string p2, "Failed to check active VPN state. Skipping."

    .line 214
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_9
    const/4 p1, -0x3

    if-ne p2, p1, :cond_b

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getMetricsCategory()I

    move-result p1

    const/16 p2, 0xeae

    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 221
    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p0, "Failed to disconnect VPN. Leaving profile in keystore."

    .line 222
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 227
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VPN_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z

    .line 229
    invoke-direct {p0, v4, v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V

    .line 232
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getMetricsCategory()I

    move-result p1

    const/16 p2, 0xeaf

    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onConfirmLockdown(Landroid/os/Bundle;ZZ)V
    .locals 0

    const-string/jumbo p3, "profile"

    .line 154
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;Z)V

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "profile"

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    const-string v0, "editing"

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v0, "exists"

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 132
    new-instance p1, Lcom/android/settings/vpn2/ConfigDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/vpn2/ConfigDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 133
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 4

    .line 102
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    const-string v0, "false"

    .line 105
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v3, "isUserAddProfilesAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserAddProfilesAllowed:I

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "isUserChangeProfilesAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mIsUserChangeProfilesAllowed:I

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v2, "isVpnAllowed"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ConfigDialogFragment"

    const-string v1, "Restriction Policy applied"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->vpn_block_add:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
