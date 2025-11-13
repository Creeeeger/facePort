.class public Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/notification/FloatingIconDependentControllerFieldListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mContext:Landroid/content/Context;

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

    check-cast p1, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string/jumbo v1, "notification_bubbles"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    const-string p1, "Bubbles_Smart_Popup_Help_VI_Dark.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    const-string p1, "Bubbles_Smart_Popup_Help_VI_Light.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    const-string p1, "Bubbles_dark.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    const-string p1, "Bubbles_light.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public updateValues(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    const-string p1, "Bubbles_Smart_Popup_Help_VI_Dark.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    const-string p1, "Bubbles_Smart_Popup_Help_VI_Light.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    const-string p1, "Bubbles_dark.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    const-string p1, "Bubbles_light.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;->mPreference:Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
