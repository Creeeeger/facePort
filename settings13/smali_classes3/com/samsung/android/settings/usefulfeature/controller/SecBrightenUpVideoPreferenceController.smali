.class public Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;
.super Lcom/android/settings/core/SecSingleChoicePreferenceController;
.source "SecBrightenUpVideoPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BRIGHTEN_UP_NODE:Ljava/lang/String; = "1"

.field private static final ORIGINAL_MODE:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "BrightenUpVideoPrefCtrl"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPreference:Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

.field private mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;)Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;->mPreference:Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SecSingleChoicePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController$SettingsObserver;

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController$SettingsObserver;-><init>(Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;->mPreference:Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;->mPreference:Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/usefulfeature/SecVideoBrightnessHorizontalRadioPreference;->setEntryEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 103
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

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEntries()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->hdr_setting_normal:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->hdr_setting_bright:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getEntryValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0"

    .line 78
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "1"

    .line 79
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getImageEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    sget v0, Lcom/android/settings/R$drawable;->sec_brighten_video_image_before:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget v0, Lcom/android/settings/R$drawable;->sec_brighten_video_image_after:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

.method public getSelectedValue()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hdr_effect"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    if-eqz v1, :cond_1

    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "0"

    :goto_0
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

.method public getSubEntries()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

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

.method public onStart()V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController$SettingsObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController$SettingsObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSelectedValue(Ljava/lang/String;)Z
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/SecBrightenUpVideoPreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "1"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 56
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hdr_effect"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    const/16 v0, 0x1117

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return v1
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
