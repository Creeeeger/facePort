.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/SysScopeStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SysScopeStatusPreferenceController.java"


# static fields
.field private static final ERROR:I = -0x1

.field private static final FLASH_LOCK_LOCKED:Ljava/lang/String; = "1"

.field private static final FLASH_LOCK_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field private static final FLASH_LOCK_UNLOCKED:Ljava/lang/String; = "0"

.field private static final KEY_SYSSCOPE_STATUS:Ljava/lang/String; = "sysscope_status"

.field private static final LOG_TAG:Ljava/lang/String; = "SysScopeStatusPreferenceController"

.field private static final NOK:I = 0x2

.field private static final OK:I = 0x1


# instance fields
.field private mIsSysscopeForChnRoot:Z

.field private mPreference:Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SysScopeStatusPreferenceController;->mIsSysscopeForChnRoot:Z

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SysScopeStatusPreferenceController;->isSysscopeForChnRoot()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SysScopeStatusPreferenceController;->mIsSysscopeForChnRoot:Z

    return-void
.end method

.method private changeSysScopeStatus()V
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->unknown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.boot.flash.locked"

    .line 54
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SysScopeStatusPreferenceController"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SysScopeStatusPreferenceController;->mIsSysscopeForChnRoot:Z

    const/4 v3, 0x1

    const-string v4, "1"

    const-string v5, "0"

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->checkRootingCondition()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sysscope_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sysscope_tampered_chn:I

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "400-810-5858"

    aput-object v4, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sysscope_tampered:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sysscope_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    move v3, v6

    .line 77
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SysScopeStatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SysScopeStatusPreferenceController;->mIsSysscopeForChnRoot:Z

    if-eqz v0, :cond_5

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SysScopeStatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    :cond_5
    return-void
.end method

.method private isSysscopeForChnRoot()Z
    .locals 0

    .line 87
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSupportRootBadge()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SysScopeStatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

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

    .line 42
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SysScopeStatusPreferenceController;->mPreference:Lcom/samsung/android/settings/deviceinfo/statusinfo/AvoidRootPreference;

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SysScopeStatusPreferenceController;->changeSysScopeStatus()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
