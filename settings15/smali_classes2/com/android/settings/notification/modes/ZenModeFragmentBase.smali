.class public abstract Lcom/android/settings/notification/modes/ZenModeFragmentBase;
.super Lcom/android/settings/notification/modes/ZenModesFragmentBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mZenMode:Lcom/android/settings/notification/modes/ZenMode;


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ZenModeSettings"

    if-eqz p1, :cond_3

    const-string v1, "MODE_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-virtual {v1, p1}, Lcom/android/settings/notification/modes/ZenModesBackend;->getMode(Ljava/lang/String;)Lcom/android/settings/notification/modes/ZenMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/modes/ZenModeFragmentBase;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mode id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModeFragmentBase;->toastAndFinish()V

    return-void

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    check-cast v1, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/modes/ZenModeFragmentBase;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    iput-object v2, v1, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string p1, "Mode id required to set mode config settings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModeFragmentBase;->toastAndFinish()V

    return-void
.end method

.method public final toastAndFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f1438cc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public final updateZenModeState()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeFragmentBase;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModeFragmentBase;->toastAndFinish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    iget-object v0, v0, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/modes/ZenModesBackend;->getMode(Ljava/lang/String;)Lcom/android/settings/notification/modes/ZenMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/modes/ZenModeFragmentBase;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const-string v2, "ZenModeSettings"

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Mode id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModeFragmentBase;->toastAndFinish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeFragmentBase;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p0, "PreferenceScreen not found"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v4}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    :try_start_0
    invoke-virtual {v4}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_7

    move-object v5, v4

    check-cast v5, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;

    iget-object v7, p0, Lcom/android/settings/notification/modes/ZenModeFragmentBase;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    iput-object v7, v5, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find preference with key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in Controller "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not cast: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method
