.class public final Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mZenButton:Landroid/widget/Button;


# virtual methods
.method public final isAvailable(Lcom/android/settings/notification/modes/ZenMode;)Z
    .locals 0

    iget-object p0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController;->mZenButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController;->mZenButton:Landroid/widget/Button;

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController;->mZenButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController;Lcom/android/settings/notification/modes/ZenMode;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p2, Lcom/android/settings/notification/modes/ZenMode;->mIsActive:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController;->mZenButton:Landroid/widget/Button;

    const p1, 0x7f143853

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeButtonPreferenceController;->mZenButton:Landroid/widget/Button;

    const p1, 0x7f143854

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method
