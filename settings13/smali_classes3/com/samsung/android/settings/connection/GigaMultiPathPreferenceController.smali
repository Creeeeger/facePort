.class public Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GigaMultiPathPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final PACKAGE_LGU_SETTINGS:Ljava/lang/String; = "com.lguplus.lgusetting"

.field private static final TAG:Ljava/lang/String; = "GigaMultiPathPreferenceController"


# instance fields
.field private mIsSecondaryUser:Z

.field private mMPTCPObserver:Landroid/database/ContentObserver;

.field private mMyUserId:I

.field private mPreference:Landroidx/preference/SecPreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;)Landroidx/preference/SecPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mMyUserId:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mIsSecondaryUser:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method private getmMPTCPObserver()Landroid/database/ContentObserver;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mMPTCPObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController$1;-><init>(Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mMPTCPObserver:Landroid/database/ContentObserver;

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mMPTCPObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private registerForObserver()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mptcp_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->getmMPTCPObserver()Landroid/database/ContentObserver;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterForObserver()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mMPTCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_2

    .line 57
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportMptcp()Z

    move-result p1

    const-string v0, "com.samsung.android.settings.connection.GigaLteSettings"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mIsSecondaryUser:Z

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    sget v1, Lcom/android/settings/R$string;->fastweb_mptcp_title:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 59
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    sget v1, Lcom/android/settings/R$string;->band_lte_title_5G:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    sget v1, Lcom/android/settings/R$string;->band_lte_title:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 66
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 45
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportMptcp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.lguplus.lgusetting"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mIsSecondaryUser:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x3

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
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mptcp_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0, v2}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 79
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

.method public onPause()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->unregisterForObserver()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->registerForObserver()V

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
