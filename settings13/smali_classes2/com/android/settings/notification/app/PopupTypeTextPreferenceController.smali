.class public Lcom/android/settings/notification/app/PopupTypeTextPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "PopupTypeTextPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 36
    iput-object p2, p0, Lcom/android/settings/notification/app/PopupTypeTextPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "popup_notification_text"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 46
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/PopupTypeTextPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/notification/NotificationBackend;->isAllowNotificationPopUpForPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/PopupTypeTextPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method isIncludedInFilter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
