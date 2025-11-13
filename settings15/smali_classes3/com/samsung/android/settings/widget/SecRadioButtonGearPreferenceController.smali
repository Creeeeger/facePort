.class public Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;


# instance fields
.field protected mOnChangeListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController$OnChangeListener;

.field protected mPreference:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->mOnChangeListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController$OnChangeListener;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;

    iget-object v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mSelectedKey:Ljava/lang/String;

    iget-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;->mOnChangeListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$OnChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler$OnChangeListener;->onCheckedChanged(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceControllersHandler;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setChecked(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController$OnChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->mOnChangeListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController$OnChangeListener;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
