.class public Lcom/android/settings/notification/SecAssistantCapabilityPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecAssistantCapabilityPreferenceController.java"


# static fields
.field static final PRIORITIZER_KEY:Ljava/lang/String; = "asst_capability_prioritizer"

.field static final RANKING_KEY:Ljava/lang/String; = "asst_capability_ranking"

.field static final SMART_KEY:Ljava/lang/String; = "asst_capabilities_actions_replies"


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/SecAssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

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

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x8cc9

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
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/SecAssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationBackend;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v0

    .line 64
    iget-object p0, p0, Lcom/android/settings/notification/SecAssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationBackend;->getDefaultNotificationAssistant()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

.method setBackend(Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/notification/SecAssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/notification/SecAssistantCapabilityPreferenceController;->getMetricsCategory()I

    move-result v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const v3, 0x8e37

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/settings/notification/SecAssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationBackend;->getDefaultNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 78
    iget-object p0, p0, Lcom/android/settings/notification/SecAssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationBackend;->setNotificationAssistantGranted(Landroid/content/ComponentName;)Z

    goto :goto_2

    .line 80
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/SecAssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationBackend;->setNotificationAssistantGranted(Landroid/content/ComponentName;)Z

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
