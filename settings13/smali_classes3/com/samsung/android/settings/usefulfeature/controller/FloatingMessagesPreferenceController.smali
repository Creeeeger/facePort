.class public Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "FloatingMessagesPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_DISPLAY_AIRMESSAGE:Ljava/lang/String; = "display_airmessage"

.field private static final TAG:Ljava/lang/String; = "FloatingMessagesPreferenceController"


# instance fields
.field private mPreference:Landroidx/preference/SecSwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "display_airmessage"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreferenceSummary(Z)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    sget p1, Lcom/android/settings/R$string;->airmessage_settings_summary:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "display_airmessage"

    .line 101
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->updatePreferenceSummary(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 84
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Common_EnableAirMessage"

    .line 85
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 39
    sget p0, Lcom/android/settings/R$string;->menu_key_advanced_features:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.bst.airmessage"

    const-string v3, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const-string v3, "S View cover attached"

    .line 69
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException in mDisplayAirmessage"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 79
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airmessage_on"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->updatePreferenceSummary(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airmessage_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/FloatingMessagesPreferenceController;->updatePreferenceSummary(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
