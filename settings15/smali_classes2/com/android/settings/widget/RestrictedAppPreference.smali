.class public Lcom/android/settings/widget/RestrictedAppPreference;
.super Lcom/android/settingslib/widget/AppPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field public userRestriction:Ljava/lang/String;


# virtual methods
.method public final checkRestrictionAndSetDisabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->userRestriction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-object p0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->userRestriction:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(ILjava/lang/String;)V

    return-void
.end method

.method public final onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public final performClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v3, v2, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v4, v3, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByEcm(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method
