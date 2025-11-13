.class public Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mSelectedProfileKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->mSelectedProfileKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    if-eqz p1, :cond_0

    const-string/jumbo v1, "selected_profile_key"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->mSelectedProfileKey:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->TAG:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string v2, "no_config_vpn"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f143231

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance v0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$2;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;I)V

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$1;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;I)V

    const p0, 0x7f1409d0

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "VPN_"

    invoke-static {v2}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/samsung/android/settings/vpn/bixby/VpnHelper$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreate: loadVpnProfiles: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Vpn.RoutineActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const v4, 0x7f1409b6

    const-string v6, "connect_vpn"

    if-ge v2, v0, :cond_5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f143221

    goto :goto_1

    :cond_4
    const p1, 0x7f143222

    :goto_1
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    iget-object p1, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean v0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance v0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$2;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;I)V

    iput-object v0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance p1, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$1;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;I)V

    invoke-virtual {v1, v4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$1;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;I)V

    const p0, 0x7f142b5f

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto/16 :goto_5

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    move v8, v5

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "showChooseVpnProfileDialog: list="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f143225

    goto :goto_3

    :cond_7
    const p1, 0x7f143226

    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0c0c

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a1135

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v8, 0x7f0d0c0b

    invoke-direct {v6, p0, v8, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->mSelectedProfileKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    move v6, v5

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_9

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/VpnProfile;

    iget-object v7, v7, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->mSelectedProfileKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v3, v5, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move v6, v0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    move v5, v6

    :cond_a
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    invoke-virtual {v6, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    iget-object p1, v6, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean v0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance v0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$2;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$2;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;I)V

    iput-object v0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance p1, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$1;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$1;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;I)V

    invoke-virtual {v6, v4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;

    invoke-direct {p1, p0, v3, v1}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;Landroid/widget/ListView;Ljava/util/List;)V

    const v0, 0x7f1409b9

    invoke-virtual {v6, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$9;

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$9;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;Landroidx/appcompat/app/AlertDialog;Ljava/util/List;)V

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_5
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->mSelectedProfileKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "selected_profile_key"

    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->mSelectedProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
