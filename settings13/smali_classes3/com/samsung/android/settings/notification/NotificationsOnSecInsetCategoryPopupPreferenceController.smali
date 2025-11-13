.class public Lcom/samsung/android/settings/notification/NotificationsOnSecInsetCategoryPopupPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "NotificationsOnSecInsetCategoryPopupPreferenceController.java"

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

    const-string p0, "sec_inset_category_popup"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 52
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    const/4 p0, 0x0

    .line 56
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method
