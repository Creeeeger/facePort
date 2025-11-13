.class Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;
.super Ljava/lang/Object;
.source "NotificationReminderAppListSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 230
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 231
    check-cast p1, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    .line 232
    invoke-virtual {p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllAppsBtn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->-$$Nest$fputmIsToggledByAllSwitch(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;Z)V

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->setSelect(Z)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isChecked :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationReminderAppListSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->-$$Nest$fputmIsDirty(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;Z)V

    .line 238
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->access$000(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "notification_reminder_type"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->-$$Nest$mupdateAllSwitch(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;Z)V

    .line 240
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings$2;->this$0:Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;->-$$Nest$mupdateNotificationReminderList(Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppListSettings;)V

    return v1
.end method
