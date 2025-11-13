.class public Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ShowClipAccessNotificationPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_SHOW_CLIP_ACCESS_NOTIFICATION:Ljava/lang/String; = "show_clip_access_notification"


# instance fields
.field private mDefault:Z

.field private final mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public static synthetic $r8$lambda$ECKavGJMY7D4Dbo0i7mAWsXAaXg(Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "show_clip_access_notification"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    new-instance p1, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;->updateConfig()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;->updateConfig()V

    return-void
.end method

.method private updateConfig()V
    .locals 3

    const-string v0, "clipboard"

    const-string/jumbo v1, "show_access_notifications"

    const/4 v2, 0x1

    .line 103
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;->mDefault:Z

    .line 106
    iget-object v0, p0, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;->mPreference:Landroidx/preference/Preference;

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

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 82
    sget p0, Lcom/android/settings/R$string;->menu_key_privacy:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

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

.method public isChecked()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    iget-boolean p0, p0, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;->mDefault:Z

    const-string v1, "clipboard_show_access_notifications"

    .line 55
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

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
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v1, "clipboard"

    .line 90
    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/android/settings/privacy/ShowClipAccessNotificationPreferenceController;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 61
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "clipboard_show_access_notifications"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const p0, 0xdae8

    const v0, 0xe742

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 63
    :goto_0
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
