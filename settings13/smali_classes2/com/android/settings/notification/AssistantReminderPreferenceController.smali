.class public Lcom/android/settings/notification/AssistantReminderPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AssistantReminderPreferenceController.java"


# static fields
.field private static final KEY_NOTIFICATION_REMINDER:Ljava/lang/String; = "asst_notification_reminder"

.field public static final NOTIFICATION_REMINDER_TYPE:Ljava/lang/String; = "notification_reminder_type"

.field public static final SELECT_All:Ljava/lang/String; = "selectAll"

.field private static final TAG:Ljava/lang/String; = "AssistantReminderPreferenceController"

.field public static final TIME_VALUE_DEFAULT:I = 0xb4

.field public static final TYPE_MSG_AND_CALL:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/android/settings/notification/AssistantReminderPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "asst_notification_reminder"

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/notification/AssistantReminderPreferenceController;->mPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 57
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/AssistantReminderPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/settings/notification/reminder/NotificationReminderActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/AssistantReminderPreferenceController;->mPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 59
    iget-object p0, p0, Lcom/android/settings/notification/AssistantReminderPreferenceController;->mPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 93
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "K06"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

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

.method public getReminderSummary(Z)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    .line 65
    iget-object p0, p0, Lcom/android/settings/notification/AssistantReminderPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getNotificationReminderSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

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

    .line 79
    iget-object p0, p0, Lcom/android/settings/notification/AssistantReminderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "notification_reminder_selectable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/AssistantReminderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_reminder_selectable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/AssistantReminderPreferenceController;->mPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/AssistantReminderPreferenceController;->getReminderSummary(Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/notification/AssistantReminderPreferenceController;->mPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/notification/AssistantReminderPreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AssistantReminderPreferenceController;->getReminderSummary(Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
