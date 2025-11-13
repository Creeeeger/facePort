.class public final Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p1, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->packageName:Ljava/lang/String;

    const-string v1, "AllAppsBtn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsToggledByAllSwitch:Z

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iput-boolean p2, v0, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->isSelected:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "app: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isChecked :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationReminderAppListSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsDirty:Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "notification_reminder_type"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "updateAllSwitch called"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsToggledByAllSwitch:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sput-boolean p2, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mAllAppsEnabled:Z

    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-virtual {v2, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, v2, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iput-boolean p2, v2, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->isSelected:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mIsToggledByAllSwitch:Z

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    iget-boolean p2, p2, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->isSelected:Z

    if-nez p2, :cond_3

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    sput-boolean v0, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->mAllAppsEnabled:Z

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->updateNotificationReminderList()V

    return v1
.end method
