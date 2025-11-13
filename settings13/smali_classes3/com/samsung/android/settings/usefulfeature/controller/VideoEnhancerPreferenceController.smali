.class public Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;
.super Lcom/android/settings/core/SecCustomPreferenceController;
.source "VideoEnhancerPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;
    }
.end annotation


# static fields
.field public static final KEY_HDR_EFFECT:Ljava/lang/String; = "hdr_settings"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

.field private mPreference:Landroidx/preference/SecPreference;

.field private mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;)Landroidx/preference/SecPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 1

    const-string v0, "hdr_settings"

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mHost:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "hdr_settings"

    .line 78
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    const/4 p0, 0x1

    .line 79
    invoke-virtual {p1, p0}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isVideoBrightnessMenuDisabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

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

.method public getBackupKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "/Settings/Advanced/VideoEnhancerSwitch"

    .line 175
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/VideoEnhancerApp"

    .line 176
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 118
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    .line 119
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x1118

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->hdr_setting:I

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x10008000

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

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
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdr_effect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    sget v0, Lcom/android/settings/R$string;->hdr_setting_bright:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/settings/R$string;->hdr_setting_normal:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 84
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hdr_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mHost:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 87
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 88
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->hdr_setting:I

    .line 91
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mHost:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0

    .line 98
    :cond_0
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

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    .line 71
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
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdr_effect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    if-eqz v2, :cond_1

    sget v0, Lcom/android/settings/R$string;->hdr_setting_bright:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/settings/R$string;->hdr_setting_normal:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 130
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController$SettingsObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreference()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isVideoBrightnessMenuDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/VideoEnhancerPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
