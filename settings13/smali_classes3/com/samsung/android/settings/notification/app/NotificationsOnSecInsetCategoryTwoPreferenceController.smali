.class public Lcom/samsung/android/settings/notification/app/NotificationsOnSecInsetCategoryTwoPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "NotificationsOnSecInsetCategoryTwoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "sec_inset_category_2"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 46
    :cond_0
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    const/4 p0, 0x0

    .line 50
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method
