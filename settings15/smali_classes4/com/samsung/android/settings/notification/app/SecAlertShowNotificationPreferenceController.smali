.class public final Lcom/samsung/android/settings/notification/app/SecAlertShowNotificationPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "alerts"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
