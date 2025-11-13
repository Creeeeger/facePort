.class public final Lcom/android/settings/widget/MainSwitchBarController;
.super Lcom/android/settings/widget/SwitchWidgetController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-void
.end method


# virtual methods
.method public final isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    :cond_0
    return-void
.end method

.method public final setChecked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public final setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    return-void
.end method

.method public final setupView()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    return-void
.end method

.method public final startListening()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final teardownView()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    return-void
.end method
