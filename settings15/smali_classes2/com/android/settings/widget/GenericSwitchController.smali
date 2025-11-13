.class public final Lcom/android/settings/widget/GenericSwitchController;
.super Lcom/android/settings/widget/SwitchWidgetController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/PrimarySwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GenericSwitchController;->mPreference:Landroidx/preference/Preference;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/GenericSwitchController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final isChecked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/widget/GenericSwitchController;->mPreference:Landroidx/preference/Preference;

    instance-of v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/PrimarySwitchPreference;->isChecked()Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p2}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/widget/GenericSwitchController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final setChecked(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/widget/GenericSwitchController;->mPreference:Landroidx/preference/Preference;

    instance-of v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/widget/GenericSwitchController;->mPreference:Landroidx/preference/Preference;

    instance-of v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/widget/GenericSwitchController;->mPreference:Landroidx/preference/Preference;

    instance-of v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final startListening()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/GenericSwitchController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final stopListening()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/widget/GenericSwitchController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
