.class public Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;
.super Landroid/app/Activity;
.source "RoutineConfigActivity.java"


# direct methods
.method static bridge synthetic -$$Nest$msetParamResult(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->setParamResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isVpnSettingsUnavailable()Z
    .locals 1

    const-string v0, "user"

    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string v0, "no_config_vpn"

    .line 63
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setParamResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "intent_params"

    .line 56
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "label_params"

    .line 57
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 58
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private showChooseVpnProfileDialog(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-static {p2}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->getVpnProfileNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showChooseVpnProfileDialog: list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Vpn.RoutineActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "connect_vpn"

    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    sget p1, Lcom/android/settings/R$string;->vpn_routine_label_connect:I

    goto :goto_0

    .line 140
    :cond_0
    sget p1, Lcom/android/settings/R$string;->vpn_routine_label_disconnect:I

    .line 142
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->vpn_routine_dialog_profiles:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 143
    sget v2, Lcom/android/settings/R$id;->vpn_routine_dialog_profiles_lv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 144
    new-instance v3, Landroid/widget/ArrayAdapter;

    sget v4, Lcom/android/settings/R$layout;->vpn_routine_dialog_profile_item:I

    invoke-direct {v3, p0, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    .line 145
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 147
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 149
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 150
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$10;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->common_cancel:I

    new-instance v1, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$9;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;)V

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->common_done:I

    new-instance v1, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$8;

    invoke-direct {v1, p0, v2, p2}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$8;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;Landroid/widget/ListView;Ljava/util/List;)V

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 174
    new-instance p2, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$11;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$11;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p0, -0x1

    .line 181
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private showCouldNotPerformActionDialog()V
    .locals 3

    .line 85
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->vpn_routine_dialog_message_could_not_perform:I

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$4;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->common_ok:I

    new-instance v2, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$3;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;)V

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showOpenVpnSettingsDialog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "connect_vpn"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    sget p1, Lcom/android/settings/R$string;->vpn_routine_dialog_message_add_profile_connect:I

    goto :goto_0

    .line 107
    :cond_0
    sget p1, Lcom/android/settings/R$string;->vpn_routine_dialog_message_add_profile_disconnect:I

    .line 109
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$7;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->common_cancel:I

    new-instance v1, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$6;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;)V

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->settings_button:I

    new-instance v1, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$5;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;)V

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showVpnSettingsUnavailableDialog()V
    .locals 3

    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->vpn_settings_not_available:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$2;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->common_ok:I

    new-instance v2, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$1;-><init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;)V

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "valid_state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", validState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Vpn.RoutineActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v1, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->showCouldNotPerformActionDialog()V

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->isVpnSettingsUnavailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->showVpnSettingsUnavailableDialog()V

    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->loadVpnProfiles()Ljava/util/List;

    move-result-object v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: loadVpnProfiles: size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p1, :cond_2

    .line 47
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->showOpenVpnSettingsDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->showChooseVpnProfileDialog(Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void
.end method
