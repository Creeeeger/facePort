.class public Lcom/samsung/android/settings/rcs/DualRcsSettingsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DualRcsSettingsController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_DUAL_RCS_SETTINGS:Ljava/lang/String; = "dual_rcs_settings_partial_branded_cpr"

.field private static final TAG:Ljava/lang/String; = "DualRcsSettingsController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

.field private final mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "dual_rcs_settings_partial_branded_cpr"

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p1, p2}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    .line 24
    new-instance p1, Lcom/samsung/android/settings/rcs/PreferenceController;

    iget-object p2, p0, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/rcs/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    return-void
.end method

.method private removePreference(Landroidx/preference/Preference;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/rcs/PreferenceController;->removePreference(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 30
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    const-string v0, "dual_rcs_settings_partial_branded_cpr"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/rcs/PreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    sget-object v0, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isDisabledForUser(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const-string p0, "getAvailabilityStatus : true"

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "dual_rcs_settings_partial_branded_cpr"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
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

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getPermanentDisable()Z

    move-result v0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/rcs/PreferenceController;->refreshSummary(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 36
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->mPreferenceController:Lcom/samsung/android/settings/rcs/PreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/rcs/PreferenceController;->getPreference()Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/rcs/DualRcsSettingsController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
