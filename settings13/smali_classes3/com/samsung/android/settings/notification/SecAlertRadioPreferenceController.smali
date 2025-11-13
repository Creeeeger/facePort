.class public Lcom/samsung/android/settings/notification/SecAlertRadioPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "SecAlertRadioPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 48
    iput-object p2, p0, Lcom/samsung/android/settings/notification/SecAlertRadioPreferenceController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    .line 49
    iput-object p3, p0, Lcom/samsung/android/settings/notification/SecAlertRadioPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "alert_importance"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 71
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_0

    .line 91
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->saveChannel()V

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/notification/SecAlertRadioPreferenceController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    .line 55
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 56
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 58
    check-cast p1, Lcom/samsung/android/settings/notification/SecRadioPreference;

    .line 59
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    const/4 v1, 0x3

    if-lt p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 60
    :goto_1
    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/notification/SecRadioPreference;->setChecked(Z)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/notification/SecRadioPreference;->setIconEnabled(Z)V

    .line 65
    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/notification/SecRadioPreference;->setRadioColor(Z)V

    :cond_2
    return-void
.end method
