.class public Lcom/android/settings/widget/SettingsMainSwitchBar;
.super Lcom/samsung/android/settings/widget/SecMainSwitchBar;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDisabledByAdmin:Z

.field public mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public mMetricsCategory:I

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public mOnBeforeListener:Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040567

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    new-instance p1, Lcom/android/settings/widget/SettingsMainSwitchBar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onBackgroundClicked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget p0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsCategory:I

    const-string v1, "switch_bar|restricted"

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->onBackgroundClicked()V

    return-void
.end method

.method public final performClick()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget p0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsCategory:I

    const-string v1, "switch_bar|restricted"

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mOnBeforeListener:Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mDisabledByAdmin:Z

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mTextView:Landroid/widget/TextView;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mTextView:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mDisabledByAdmin:Z

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setEnabled(Z)V

    return-void
.end method

.method public setMetricsCategory(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mMetricsCategory:I

    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;->mOnBeforeListener:Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;

    return-void
.end method
