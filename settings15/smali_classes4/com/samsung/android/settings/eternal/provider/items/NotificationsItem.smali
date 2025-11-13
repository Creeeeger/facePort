.class public final Lcom/samsung/android/settings/eternal/provider/items/NotificationsItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# virtual methods
.method public final followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 1

    iget-object p0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string v0, "/Settings/Notifications/SortNotifications"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string p1, "/Settings/Notifications/AdvancedSettings/ShowAppIcon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 18

    move-object/from16 v0, p3

    const-string v1, "NotificationsItem"

    const-string/jumbo v2, "unknown key : "

    const-string v3, "B -> KEY_NOTIFICATION_SHOW_APP_ICON: "

    const-string v4, "B -> KEY_NOTIFICATION_SHOW_CATEGORY_SETTING: "

    const-string v5, "B-> KEY_SHOW_FAVORTIE_APP_NOTIFICATIONS: "

    const-string v6, "SEM_TIME_KEY: "

    const-string v7, "SEM_NOTIFICATION_REMINDER_VIBRATE: "

    const-string/jumbo v8, "notification_reminder_selectable: "

    const-string v9, "B-> KEY_GALAXY_AI_COVER_SCREEN_SUGGEST_RESPONSES: "

    const-string v10, "B-> KEY_NOTIFICATION_FILTER_ADS: "

    const-string v11, "B-> KEY_NOTIFICATION_FILTER_OLD_NOTIFICATIONS: "

    const-string v12, "B-> KEY_NOTIFICATION_FILTER_BACKGROUND_ACTIVITES: "

    const-string v13, "B-> KEY_NOTIFICATION_FILTER_MINIMISED_NOTIFICATIONS: "

    new-instance v14, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-object/from16 p0, v3

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "/Settings/Notifications/AppIconBadge"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v17, v4

    const/4 v3, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1f

    :sswitch_1
    const-string v3, "/Settings/Notifications/AppIconBadgeShowNotifications"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    :goto_0
    move-object/from16 v17, v4

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "/Settings/Notifications/AdvancedSettings/FilterNotifications/OldNotifications"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1d

    goto :goto_0

    :sswitch_3
    const-string v3, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorIndex"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto :goto_0

    :sswitch_4
    const-string v3, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedTransparency"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto :goto_0

    :sswitch_5
    const-string v3, "/Settings/Notifications/BriefPopupSettings/ColorByKeyword"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto :goto_0

    :sswitch_6
    const-string v3, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedDuration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x16

    goto :goto_0

    :sswitch_7
    const-string v3, "/Settings/Notifications/AdvancedSettings/NotificationReminder/ShowReminderTime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto :goto_0

    :sswitch_8
    const-string v3, "/Settings/Notifications/AdvancedSettings/NetworkSpeed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string v3, "/Settings/Notifications/AppIconBadgeStyle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v17, v4

    const/4 v3, 0x1

    goto/16 :goto_2

    :sswitch_a
    const-string v3, "/Settings/Notifications/NotificationPopUpStyle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto :goto_0

    :sswitch_b
    const-string v3, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorType"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto :goto_0

    :sswitch_c
    const-string v3, "/Settings/Notifications/AdvancedSettings/NotificationReminder/ShowVibration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    goto :goto_0

    :sswitch_d
    const-string v3, "/Settings/Notifications/GalaxyAI/ChatAssist/SuggestResponses"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "/Settings/Notifications/AppNotification/FavoriteAppNotifications"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "/Settings/Notifications/AdvancedSettings/NotificationHistory"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorRecent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "/Settings/Notifications/AdvancedSettings/FilterNotifications/MinimisedNotifications"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "/Settings/Notifications/SortNotifications"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedThickness"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_14
    const-string v3, "/Settings/Notifications/AdvancedSettings/NotificationReminderSelectable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "/Settings/Notifications/AdvancedSettings/ShowNotificationCategorySettings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "/Settings/Notifications/AdvancedSettings/FilterNotifications/BackgroundActivites"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_17
    const-string v3, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorCustom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_18
    const-string v3, "/Settings/Notifications/LockscreenSettings/ShowContentWhenUnlocked"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_19
    const-string v3, "/Settings/Notifications/AdvancedSettings/ShowAppIcon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_1a
    const-string v3, "/Settings/Notifications/AdvancedSettings/FloatingIcons"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_0

    :sswitch_1b
    const-string v3, "/Settings/Notifications/BriefPopupSettings/ShowEvenWhileScreenIsOff"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_1c
    const-string v3, "/Settings/Notifications/ShowSnoozeOption"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v17, v4

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_1d
    const-string v3, "/Settings/Notifications/DndDuration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_0

    :sswitch_1e
    const-string v3, "/Settings/Notifications/AdvancedSettings/FilterNotifications/Advertisements"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_1f
    const-string v3, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/Effect"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_0

    :cond_0
    :goto_1
    const/4 v3, -0x1

    goto/16 :goto_0

    :goto_2
    const-string v4, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    packed-switch v3, :pswitch_data_0

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_0
    const-string/jumbo v0, "noti_filter_low_importance_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v15, v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_1
    const-string/jumbo v0, "noti_filter_background_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v15, v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_2
    const-string/jumbo v0, "noti_filter_old_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v15, v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_3
    const-string/jumbo v0, "noti_filter_promotion_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v15, v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_4
    const-string/jumbo v0, "suggestion_responses"

    const/4 v2, 0x1

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_5
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->NOTIS_LOCKSCREEN_SHOW_CONTENT_WHEN_UNLOCKED_DEFAULT_ON:Z

    const-string v2, "lock_screen_allow_private_notifications_when_unsecure"

    invoke-static {v15, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_6
    const-string/jumbo v0, "notification_reminder_selectable"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_7
    const-string/jumbo v0, "notification_reminder_vibrate"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_8
    const-string/jumbo v0, "time_key"

    const/16 v2, 0xb4

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :pswitch_9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "edge_lighting_duration"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "edge_lighting_transparency"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_b
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "edge_lighting_thickness"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_c
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "edgelighting_recently_used_color"

    invoke-static {v15, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_d
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "edgelighting_custom_color"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_e
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "edge_lighting_basic_color_index"

    const/4 v2, 0x3

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_f
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "edge_lighting_color_type"

    const/4 v2, 0x1

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_10
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "preload/noframe"

    const-string v2, "edge_lighting_style_type_str"

    invoke-static {v15, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_11
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "edge_lighting_custom_text_color"

    invoke-static {v15, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v14, v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_12
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "edge_lighting_show_condition"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_13
    const-string/jumbo v0, "notification_panel_show_favorite_app_notifications"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    :pswitch_14
    const-string v0, "edge_lighting"

    const/4 v2, 0x1

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v2, :cond_11

    const/4 v0, 0x1

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_15
    const-string/jumbo v0, "show_notification_category_setting"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v15, v0, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_16
    const-string/jumbo v0, "show_notification_app_icon"

    const/4 v2, 0x1

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_17
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_SupportRealTimeNetworkSpeed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "network_speed"

    invoke-static {v15, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_18
    const-string/jumbo v0, "notification_bubbles"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v15, v0, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_19
    const-string/jumbo v0, "notification_sort_order"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v15, v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v2, :cond_16

    const/4 v0, 0x1

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_1a
    const-string/jumbo v0, "notification_history_enabled"

    const/4 v2, 0x1

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v2, :cond_17

    const/4 v0, 0x1

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_1b
    const-string/jumbo v0, "zen_duration"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_1c
    const-string/jumbo v0, "show_notification_snooze"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v15, v0, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_20

    :pswitch_1d
    const-string v0, "home_show_notification_enabled"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_20

    :pswitch_1e
    const-string v0, "badge_app_icon_type"

    const/4 v2, 0x0

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    :goto_1d
    invoke-virtual {v14, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_20

    :pswitch_1f
    const-string/jumbo v0, "notification_badging"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v15, v0, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v2, :cond_1c

    move v3, v2

    goto :goto_1e

    :cond_1c
    const/4 v3, 0x0

    :goto_1e
    invoke-virtual {v14, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_20

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_20
    return-object v14

    :sswitch_data_0
    .sparse-switch
        -0x79369c92 -> :sswitch_1f
        -0x7509766d -> :sswitch_1e
        -0x74cfac76 -> :sswitch_1d
        -0x667ae7a4 -> :sswitch_1c
        -0x613f8c2b -> :sswitch_1b
        -0x5435d3d2 -> :sswitch_1a
        -0x50ab2389 -> :sswitch_19
        -0x47b831b8 -> :sswitch_18
        -0x43f5b709 -> :sswitch_17
        -0x4097241b -> :sswitch_16
        -0x40795bd1 -> :sswitch_15
        -0x3ab73787 -> :sswitch_14
        -0x3987d08b -> :sswitch_13
        -0x357ac65a -> :sswitch_12
        -0x2d7f6a92 -> :sswitch_11
        -0x2b45fc1f -> :sswitch_10
        -0x29dba0dd -> :sswitch_f
        0x27563ea -> :sswitch_e
        0x374b809 -> :sswitch_d
        0x130bbea9 -> :sswitch_c
        0x1367f640 -> :sswitch_b
        0x1afe3754 -> :sswitch_a
        0x24454764 -> :sswitch_9
        0x27dc8dff -> :sswitch_8
        0x2b7f26e8 -> :sswitch_7
        0x3f069173 -> :sswitch_6
        0x48aa0a05 -> :sswitch_5
        0x4b9e87b7 -> :sswitch_4
        0x58f6a28c -> :sswitch_3
        0x66661b46 -> :sswitch_2
        0x67a4a21e -> :sswitch_1
        0x6d38ce4d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "NotificationsItem"

    const-string v4, "R -> KEY_NOTIFICATIONS_APP_ICON_BADGE: "

    const-string v5, "R -> KEY_NOTIFICATIONS_SORT_NOTIFICATIONS: prevOneUIVersion: "

    const-string v6, "R -> KEY_NOTIFICATION_SHOW_APP_ICON: prevOneUIVersion: "

    const-string v7, "R -> KEY_NOTIFICATION_SHOW_APP_ICON: "

    const-string v8, "R -> KEY_NOTIFICATION_SHOW_CATEGORY_SETTING: "

    const-string v9, "SEM_TIME_KEY: "

    const-string v10, "R -> KEY_SHOW_FAVORTIE_APP_NOTIFICATIONS: "

    const-string v11, "SEM_NOTIFICATION_REMINDER_VIBRATE: "

    const-string/jumbo v12, "notification_reminder_selectable: "

    const-string v13, "R -> KEY_GALAXY_AI_COVER_SCREEN_SUGGEST_RESPONSES: "

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 p0, v4

    const/4 v4, 0x0

    move-object/from16 v16, v5

    invoke-virtual {v1, v15, v4}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v15, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "/Settings/Notifications/AppIconBadge"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "/Settings/Notifications/AppIconBadgeShowNotifications"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "/Settings/Notifications/AdvancedSettings/FilterNotifications/OldNotifications"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorIndex"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedTransparency"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "/Settings/Notifications/BriefPopupSettings/ColorByKeyword"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedDuration"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "/Settings/Notifications/AdvancedSettings/NotificationReminder/ShowReminderTime"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "/Settings/Notifications/AdvancedSettings/NetworkSpeed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "/Settings/Notifications/AppIconBadgeStyle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "/Settings/Notifications/NotificationPopUpStyle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorType"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_c
    const-string v4, "/Settings/Notifications/AdvancedSettings/NotificationReminder/ShowVibration"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "/Settings/Notifications/GalaxyAI/ChatAssist/SuggestResponses"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_e
    const-string v4, "/Settings/Notifications/AppNotification/FavoriteAppNotifications"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_f
    const-string v4, "/Settings/Notifications/AdvancedSettings/NotificationHistory"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_10
    const-string v4, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorRecent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_11
    const-string v4, "/Settings/Notifications/AdvancedSettings/FilterNotifications/MinimisedNotifications"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_12
    const-string v4, "/Settings/Notifications/SortNotifications"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_13
    const-string v4, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedThickness"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_14
    const-string v4, "/Settings/Notifications/AdvancedSettings/NotificationReminderSelectable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_15
    const-string v4, "/Settings/Notifications/AdvancedSettings/ShowNotificationCategorySettings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v4, "/Settings/Notifications/AdvancedSettings/FilterNotifications/BackgroundActivites"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :sswitch_17
    const-string v4, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorCustom"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_18
    const-string v4, "/Settings/Notifications/LockscreenSettings/ShowContentWhenUnlocked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_19
    const-string v4, "/Settings/Notifications/AdvancedSettings/ShowAppIcon"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_1a
    const-string v4, "/Settings/Notifications/AdvancedSettings/FloatingIcons"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1b
    const-string v4, "/Settings/Notifications/BriefPopupSettings/ShowEvenWhileScreenIsOff"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_1c
    const-string v4, "/Settings/Notifications/ShowSnoozeOption"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1d
    const-string v4, "/Settings/Notifications/DndDuration"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1e
    const-string v4, "/Settings/Notifications/AdvancedSettings/FilterNotifications/Advertisements"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_1f
    const-string v4, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/Effect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    sget-object v4, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    move-object/from16 v17, v1

    const/4 v1, -0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "noti_filter_low_importance_notification"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :pswitch_1
    const-string/jumbo v0, "noti_filter_background_notification"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :pswitch_2
    const-string/jumbo v0, "noti_filter_old_notification"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :pswitch_3
    const-string/jumbo v0, "noti_filter_promotion_notification"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "suggestion_responses"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_5
    const-string v0, "lock_screen_allow_private_notifications_when_unsecure"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_6
    const-string/jumbo v0, "notification_reminder_selectable"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_7
    const-string/jumbo v0, "notification_reminder_vibrate"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "notification_panel_show_favorite_app_notifications"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :pswitch_9
    const-string/jumbo v0, "time_key"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "show_notification_category_setting"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v1, "show_notification_app_icon"

    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {v0}, Lcom/samsung/android/settings/eternal/utils/EternalUtils;->getOneUIVersionInt(Ljava/lang/String;)I

    move-result v0

    const v2, 0x11170

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-static {v14, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v14, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportRealTimeNetworkSpeed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "network_speed"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_2
    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_d
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    move-object/from16 v6, v17

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "edge_lighting_duration"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :cond_3
    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_e
    move-object/from16 v6, v17

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "edge_lighting_transparency"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :cond_4
    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_f
    move-object/from16 v6, v17

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "edge_lighting_thickness"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :cond_5
    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_10
    move-object/from16 v6, v17

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "edgelighting_recently_used_color"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_6
    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_11
    move-object/from16 v6, v17

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "edgelighting_custom_color"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_7
    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_12
    move-object/from16 v6, v17

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "edge_lighting_basic_color_index"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :cond_8
    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_13
    move-object/from16 v6, v17

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "edge_lighting_color_type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :cond_9
    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_14
    move-object/from16 v6, v17

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "edge_lighting_style_type_str"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_a
    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_15
    move-object/from16 v6, v17

    const/4 v2, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v0, p3

    move v6, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "edge_lighting_custom_text_color"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v2, v0, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_b
    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_16
    move-object/from16 v6, v17

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "edge_lighting_show_condition"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :cond_c
    iput-object v4, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v15, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_3

    :pswitch_17
    const-string v0, "edge_lighting"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :pswitch_18
    const-string/jumbo v0, "notification_bubbles"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :pswitch_19
    const-string/jumbo v0, "notification_history_enabled"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_1a
    const-string/jumbo v0, "zen_duration"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_1b
    const-string/jumbo v0, "show_notification_snooze"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_3

    :pswitch_1c
    const-string v0, "home_show_notification_enabled"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :pswitch_1d
    const/4 v6, 0x1

    iget-object v0, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string/jumbo v2, "notification_sort_order"

    if-eqz v0, :cond_d

    :try_start_3
    invoke-static {v0}, Lcom/samsung/android/settings/eternal/utils/EternalUtils;->getOneUIVersionInt(Ljava/lang/String;)I

    move-result v0

    const v4, 0x11170

    if-ge v0, v4, :cond_d

    invoke-static {v14, v2, v6, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_3

    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v14, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_3

    :pswitch_1e
    const-string v0, "badge_app_icon_type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :pswitch_1f
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "notification_badging"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_3
    invoke-virtual {v15}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79369c92 -> :sswitch_1f
        -0x7509766d -> :sswitch_1e
        -0x74cfac76 -> :sswitch_1d
        -0x667ae7a4 -> :sswitch_1c
        -0x613f8c2b -> :sswitch_1b
        -0x5435d3d2 -> :sswitch_1a
        -0x50ab2389 -> :sswitch_19
        -0x47b831b8 -> :sswitch_18
        -0x43f5b709 -> :sswitch_17
        -0x4097241b -> :sswitch_16
        -0x40795bd1 -> :sswitch_15
        -0x3ab73787 -> :sswitch_14
        -0x3987d08b -> :sswitch_13
        -0x357ac65a -> :sswitch_12
        -0x2d7f6a92 -> :sswitch_11
        -0x2b45fc1f -> :sswitch_10
        -0x29dba0dd -> :sswitch_f
        0x27563ea -> :sswitch_e
        0x374b809 -> :sswitch_d
        0x130bbea9 -> :sswitch_c
        0x1367f640 -> :sswitch_b
        0x1afe3754 -> :sswitch_a
        0x24454764 -> :sswitch_9
        0x27dc8dff -> :sswitch_8
        0x2b7f26e8 -> :sswitch_7
        0x3f069173 -> :sswitch_6
        0x48aa0a05 -> :sswitch_5
        0x4b9e87b7 -> :sswitch_4
        0x58f6a28c -> :sswitch_3
        0x66661b46 -> :sswitch_2
        0x67a4a21e -> :sswitch_1
        0x6d38ce4d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
