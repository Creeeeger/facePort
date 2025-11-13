.class public final Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAllowListed:Z

.field public mSeaPermissionGranted:Z

.field public mSeaPermissionRequested:Z

.field public mUeaPermissionRequested:Z


# virtual methods
.method public final isAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->mSeaPermissionGranted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->mUeaPermissionRequested:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->mAllowListed:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final shouldBeVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->mSeaPermissionRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->mUeaPermissionRequested:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$AlarmsAndRemindersState;->mAllowListed:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
