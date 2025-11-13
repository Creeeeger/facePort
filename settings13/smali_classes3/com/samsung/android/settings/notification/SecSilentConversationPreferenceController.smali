.class public Lcom/samsung/android/settings/notification/SecSilentConversationPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "SecSilentConversationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 39
    iput-object p3, p0, Lcom/samsung/android/settings/notification/SecSilentConversationPreferenceController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "silent_importance"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 49
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 78
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 83
    iget-object p1, p0, Lcom/samsung/android/settings/notification/SecSilentConversationPreferenceController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-virtual {p1}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->saveChannel()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 64
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 65
    check-cast p1, Lcom/samsung/android/settings/notification/SecRadioPreference;

    .line 66
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    const/4 v3, 0x2

    if-gt p0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 67
    :goto_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/notification/SecRadioPreference;->setChecked(Z)V

    .line 68
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/notification/SecRadioPreference;->setIconEnabled(Z)V

    .line 69
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/notification/SecRadioPreference;->setRadioColor(Z)V

    :cond_2
    return-void
.end method
