.class public Lcom/samsung/android/settings/notification/app/NotificationsOnSecInsetCategoryOnePreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "NotificationsOnSecInsetCategoryOnePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "SecInsetCategory_for_desc"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->hasValidGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 56
    :cond_2
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    const/4 p0, 0x0

    .line 60
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method
