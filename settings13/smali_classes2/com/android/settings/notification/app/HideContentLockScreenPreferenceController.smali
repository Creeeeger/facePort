.class public Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "HideContentLockScreenPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mCurrentLockType:I

.field private mLocknotitype:[Ljava/lang/CharSequence;

.field private mPreference:Landroidx/preference/SecDropDownPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mCurrentLockType:I

    .line 37
    iput-object p2, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "hide_content"

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mLocknotitype:[Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->hide_content_lockscreen:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mLocknotitype:[Ljava/lang/CharSequence;

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mLocknotitype:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 70
    iget-object p0, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "0"

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "hide_content"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, v1}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_lock_screen_notifications_summary_hide:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget v2, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mCurrentLockType:I

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->show_content_on_lockscreen:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->hide_content_on_lockscreen:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 47
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/notification/NotificationBackend;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 104
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mCurrentLockType:I

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const/4 v3, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    invoke-virtual {v0, v2, v1, p2}, Lcom/android/settings/notification/NotificationBackend;->setLockScreenNotificationVisibilityForPackage(Ljava/lang/String;II)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 108
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 109
    iget p2, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mCurrentLockType:I

    const-string v0, "App_Lock_show content"

    if-ne p2, v3, :cond_1

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_show"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 112
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_hide"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const p0, 0x8cb8

    .line 113
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "NSTE0036"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v3
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/NotificationBackend;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mCurrentLockType:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mLocknotitype:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 84
    :cond_0
    iput v1, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mCurrentLockType:I

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz v0, :cond_4

    .line 88
    iget v2, p0, Lcom/android/settings/notification/app/HideContentLockScreenPreferenceController;->mCurrentLockType:I

    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 98
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method
