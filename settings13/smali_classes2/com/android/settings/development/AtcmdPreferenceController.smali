.class public Lcom/android/settings/development/AtcmdPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AtcmdPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/AtcmdPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private rebootDevice()V
    .locals 4

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 81
    new-instance v1, Lcom/android/settings/development/AtcmdPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AtcmdPreferenceController$1;-><init>(Lcom/android/settings/development/AtcmdPreferenceController;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "atcmd_developer_settings"

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 71
    iget-boolean p1, p0, Lcom/android/settings/development/AtcmdPreferenceController;->enabled:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AtcmdPreferenceController;->setAtcmdProperty(Z)V

    .line 72
    invoke-direct {p0}, Lcom/android/settings/development/AtcmdPreferenceController;->rebootDevice()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p2, Landroidx/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/android/settings/development/AtcmdPreferenceController;->enabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 75
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :goto_0
    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 44
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/development/AtcmdPreferenceController;->enabled:Z

    .line 46
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x10803b5

    .line 47
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1040014

    .line 48
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->blockat_reboot_message:I

    .line 49
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->okay:I

    .line 50
    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->cancel:I

    .line 51
    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p0, 0x1

    return p0
.end method

.method protected setAtcmdProperty(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    const-string/jumbo v1, "persist.radio.block_atcmd.status"

    .line 37
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3GPP AT commands : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "Enable"

    goto :goto_1

    :cond_1
    const-string p1, "Disable"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    const-string/jumbo p1, "persist.radio.block_atcmd.status"

    const/4 v0, 0x1

    .line 59
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
