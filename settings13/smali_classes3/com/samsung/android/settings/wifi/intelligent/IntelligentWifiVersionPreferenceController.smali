.class public Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "IntelligentWifiVersionPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_INTELLIGENT_WIFI_VERSION:Ljava/lang/String; = "intelligent_wifi_version"

.field private static final TAG:Ljava/lang/String; = "IntelligentWifiVersionPreferenceController"

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7

.field private static final WIFI_DEVELOPER_ALREADY_ON:I = 0x3

.field private static final WIFI_DEVELOPER_DEFAULT:I = 0x0

.field private static final WIFI_DEVELOPER_ON:I = 0x2

.field private static final WIFI_DEVELOPER_READY:I = 0x1


# instance fields
.field private mDevHitCountdown:I

.field private mDevHitToast:Landroid/widget/Toast;

.field private mListener:Lcom/samsung/android/settings/wifi/intelligent/OnDeveloperOptionEnabledListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private enableWifiDevelopmentSettings()V
    .locals 2

    const-string v0, "IntelligentWifiVersionPreferenceController"

    const-string v1, "enable Wi-Fi development settings"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 133
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsEnabler;->setWifiDevelopmentSettingsEnabled(Z)V

    .line 134
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->mListener:Lcom/samsung/android/settings/wifi/intelligent/OnDeveloperOptionEnabledListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/intelligent/OnDeveloperOptionEnabledListener;->onEnableOption()V

    return-void
.end method

.method private showToast(I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 112
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$plurals;->show_wifi_dev_countdown:I

    iget v2, p0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->mDevHitCountdown:I

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 112
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->show_wifi_dev_on:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 118
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->show_wifi_dev_already:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, ""

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_4

    .line 122
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 125
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "5.0.0"

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 84
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 87
    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->mDevHitCountdown:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->mDevHitCountdown:I

    const/4 v2, 0x3

    if-lez p1, :cond_2

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const/4 v2, 0x2

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->enableWifiDevelopmentSettings()V

    .line 98
    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->showToast(I)V

    return v1
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

.method public onResume()V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume called. isWifiDevelopmentSettingsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsEnabler;->isWifiDevelopmentSettingsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntelligentWifiVersionPreferenceController"

    .line 71
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsEnabler;->isWifiDevelopmentSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->mDevHitCountdown:I

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setOnDeveloperOptionEnabledListener(Lcom/samsung/android/settings/wifi/intelligent/OnDeveloperOptionEnabledListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/IntelligentWifiVersionPreferenceController;->mListener:Lcom/samsung/android/settings/wifi/intelligent/OnDeveloperOptionEnabledListener;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
