.class public final Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# virtual methods
.method public final followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 2

    iget-object p0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string v0, "/Settings/LockScreen/ShowShortcut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string v1, "/Settings/LockScreen/NotificationIconOnly"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string v1, "/Settings/LockScreen/ShowNotification"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string v1, "/Settings/LockScreen/ShowNotificationOnKeyguard"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string p1, "/Settings/LockScreen/HideContent"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public final getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v3, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "lock_screen_show_notifications_on_keyguard"

    const-string v6, "Eternal/LockScreenItem"

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_0
    move v1, v10

    goto/16 :goto_1

    :sswitch_0
    const-string v11, "/Settings/LockScreen/VisiblePattern"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_1
    const-string v11, "/Settings/LockScreen/FaceWidgetPosition"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_2
    const-string v11, "/Settings/LockScreen/ContactInformation"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_3
    const-string v11, "/Settings/LockScreen/LunarCalendar"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_4
    const-string v11, "/Settings/LockScreen/RoamingClockHomeCity"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_5
    const-string v11, "/Settings/LockScreen/FaceWidget"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_6
    const-string v11, "/Settings/LockScreen/NotificationsToShow"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_7
    const-string v11, "/Settings/LockScreen/AutoReverseTextColor"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_8
    const-string v11, "/Settings/LockScreen/ShowShortcut"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v11, "/Settings/LockScreen/RoamingClock"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_a
    const-string v11, "/Settings/LockScreen/LockAfterTimeout"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_b
    const-string v11, "/Settings/LockScreen/PowerInstantlyLocks"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_c
    const-string v11, "/Settings/LockScreen/AutoFactoryReset"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_d
    const-string v11, "/Settings/LockScreen/LockInstantlyWithFolding"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_e
    const-string v11, "/Settings/LockScreen/Shortcut"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_f
    const-string v11, "/Settings/LockScreen/HijriCalendar"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_10
    const-string v11, "/Settings/LockScreen/NotificationIconOnly"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_11
    const-string v11, "/Settings/LockScreen/ShowNotification"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_12
    const-string v11, "/Settings/LockScreen/Transparency"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_13
    const-string v11, "/Settings/LockScreen/ShowLockDownOption"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_14
    const-string v11, "/Settings/LockScreen/ShowNotificationOnKeyguard"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_15
    const-string v11, "/Settings/LockScreen/TransparencyDarkMode"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_16
    const-string v11, "/Settings/LockScreen/LockNetworkAndSecurity"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_17
    const-string v11, "/Settings/LockScreen/HideContent"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_18
    const-string v11, "/Settings/LockScreen/ShowOnAOD"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    move v1, v8

    goto :goto_1

    :sswitch_19
    const-string v11, "/Settings/LockScreen/RoamingClockPosition"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    move v1, v9

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_20

    :pswitch_0
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v8, v0, :cond_1a

    goto :goto_2

    :cond_1a
    move v8, v9

    :goto_2
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_1
    const-string v0, "face_widgets_option"

    invoke-static {v4, v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_1b

    goto :goto_3

    :cond_1b
    move v8, v9

    :goto_3
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_2
    iget-object v1, v0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {v3, v0, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_20

    :pswitch_3
    const-string v0, "aodlock_support_lunar"

    invoke-static {v4, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v8, v0, :cond_1c

    goto :goto_4

    :cond_1c
    move v8, v9

    :goto_4
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_4
    const-string v0, "homecity_timezone"

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    move-object v0, v7

    :cond_1d
    invoke-virtual {v3, v0, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_5
    const-string v0, "face_widget_order"

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v5, "servicebox_music;servicebox_calendar;servicebox_alarm"

    if-eqz v1, :cond_1e

    move-object v0, v5

    :cond_1e
    invoke-virtual {v3, v0, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v12, v8

    move v7, v9

    move v11, v7

    :goto_5
    array-length v13, v1

    if-ge v7, v13, :cond_23

    aget-object v13, v1, v7

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    :goto_6
    move v14, v10

    goto :goto_7

    :sswitch_1a
    const-string/jumbo v14, "servicebox_calendar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1f

    goto :goto_6

    :cond_1f
    const/4 v14, 0x2

    goto :goto_7

    :sswitch_1b
    const-string/jumbo v14, "servicebox_music"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20

    goto :goto_6

    :cond_20
    move v14, v8

    goto :goto_7

    :sswitch_1c
    const-string/jumbo v14, "servicebox_alarm"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_21

    goto :goto_6

    :cond_21
    move v14, v9

    :goto_7
    packed-switch v14, :pswitch_data_1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "add_info_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "."

    const-string v2, "_"

    invoke-virtual {v13, v15, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v11, v8

    :try_start_0
    invoke-static {v4, v2, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "faceWidget_Item_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v10, v13, :cond_22

    :goto_8
    move v2, v8

    goto :goto_9

    :cond_22
    move v2, v9

    :goto_9
    and-int/2addr v12, v2

    goto :goto_a

    :catch_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "There is no item in face widget. Item : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :pswitch_6
    const-string v2, "add_info_today_schedule"

    invoke-static {v4, v2, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v14, "todaySchedule"

    invoke-virtual {v3, v13, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v10, v2, :cond_22

    goto :goto_8

    :pswitch_7
    const-string v2, "add_info_music_control"

    invoke-static {v4, v2, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v14, "musicController"

    invoke-virtual {v3, v13, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v8, v2, :cond_22

    goto :goto_8

    :pswitch_8
    const-string v2, "add_info_alarm"

    invoke-static {v4, v2, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v14, "nextAlarm"

    invoke-virtual {v3, v13, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v10, v2, :cond_22

    goto :goto_8

    :goto_a
    add-int/2addr v7, v8

    goto/16 :goto_5

    :cond_23
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "facewidget_item_cnt"

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz v12, :cond_24

    goto :goto_b

    :cond_24
    move v8, v9

    :goto_b
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_9
    const-string v0, "lock_screen_show_silent_notifications"

    invoke-static {v4, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v8, v0, :cond_25

    goto :goto_c

    :cond_25
    move v8, v9

    :goto_c
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_a
    const-string/jumbo v0, "notification_text_color_inversion"

    invoke-static {v4, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v8, v0, :cond_26

    goto :goto_d

    :cond_26
    move v8, v9

    :goto_d
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_b
    const-string v0, "lockscreen_show_shortcut"

    invoke-static {v4, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v8, v0, :cond_27

    goto :goto_e

    :cond_27
    move v8, v9

    :goto_e
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_c
    :try_start_1
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "ril.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    const-string/jumbo v0, "readSalesCode failed"

    invoke-static {v6, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_f
    const-string v0, "NZC"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "USC"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "ACG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "LRA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "2DX"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "XNF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "XNX"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "XNZ"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_10

    :cond_29
    move v0, v8

    goto :goto_11

    :cond_2a
    :goto_10
    move v0, v9

    :goto_11
    const-string v1, "dualclock_menu_settings"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v1, v0, :cond_2b

    goto :goto_12

    :cond_2b
    move v8, v9

    :goto_12
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_d
    const-string v0, "lock_screen_lock_after_timeout"

    const-wide/16 v1, 0x1388

    invoke-static {v4, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    cmp-long v0, v1, v4

    if-nez v0, :cond_2c

    goto :goto_13

    :cond_2c
    move v8, v9

    :goto_13
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_e
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_20

    :pswitch_f
    const-string v0, "auto_swipe_main_user"

    invoke-static {v4, v0, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_2d

    goto :goto_14

    :cond_2d
    move v8, v9

    :goto_14
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_10
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getFolderInstantlyLocks(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_20

    :pswitch_11
    const-string v0, "lock_application_shortcut"

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    move-object v0, v7

    :cond_2e
    invoke-virtual {v3, v0, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_12
    const-string v0, "aodlock_support_hijri"

    invoke-static {v4, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v8, v0, :cond_2f

    goto :goto_15

    :cond_2f
    move v8, v9

    :goto_15
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_13
    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "lockscreen_minimizing_notification"

    invoke-static {v4, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_30

    move v1, v8

    :cond_30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v8, v1, :cond_31

    goto :goto_16

    :cond_31
    move v8, v9

    :goto_16
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_14
    const-string v0, "lock_screen_show_notifications"

    invoke-static {v4, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v8, v0, :cond_32

    goto :goto_17

    :cond_32
    move v8, v9

    :goto_17
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "lock_noticard_opacity"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_33

    goto :goto_18

    :cond_33
    move v8, v9

    :goto_18
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_16
    const-string v0, "lockdown_in_power_menu"

    invoke-static {v4, v0, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_34

    goto :goto_19

    :cond_34
    move v8, v9

    :goto_19
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_17
    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v8, v0, :cond_35

    goto :goto_1a

    :cond_35
    move v8, v9

    :goto_1a
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_20

    :pswitch_18
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "lock_noticard_opacity_dark_mode"

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v1, :cond_36

    goto :goto_1b

    :cond_36
    move v8, v9

    :goto_1b
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_20

    :pswitch_19
    const-string v0, "lock_function_val"

    invoke-static {v4, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v8, v0, :cond_37

    goto :goto_1c

    :cond_37
    move v8, v9

    :goto_1c
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_20

    :pswitch_1a
    const-string v0, "lock_screen_allow_private_notifications"

    invoke-static {v4, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v8, v0, :cond_38

    goto :goto_1d

    :cond_38
    move v8, v9

    :goto_1d
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_20

    :pswitch_1b
    const-string v0, "lockscreen_notifications_option"

    invoke-static {v4, v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_39

    goto :goto_1e

    :cond_39
    move v8, v9

    :goto_1e
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_20

    :pswitch_1c
    const-string/jumbo v0, "roaming_clock_option"

    invoke-static {v4, v0, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_3a

    goto :goto_1f

    :cond_3a
    move v8, v9

    :goto_1f
    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    :cond_3b
    :goto_20
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x771ea347 -> :sswitch_19
        -0x723e6381 -> :sswitch_18
        -0x710e2284 -> :sswitch_17
        -0x62d9e611 -> :sswitch_16
        -0x5fbec954 -> :sswitch_15
        -0x4b7bbdf8 -> :sswitch_14
        -0x4048e8a6 -> :sswitch_13
        -0x25f91cad -> :sswitch_12
        -0x2538b8fd -> :sswitch_11
        -0x23b5d535 -> :sswitch_10
        -0x16dbd5bd -> :sswitch_f
        -0x1469563f -> :sswitch_e
        -0x12d0f62d -> :sswitch_d
        -0x1064a7d1 -> :sswitch_c
        -0x8f8d1dc -> :sswitch_b
        0x1a9a32b -> :sswitch_a
        0x6c2cf70 -> :sswitch_9
        0x865665e -> :sswitch_8
        0x27316a3e -> :sswitch_7
        0x279f62c5 -> :sswitch_6
        0x2b8a7dbc -> :sswitch_5
        0x3f4c3e7a -> :sswitch_4
        0x509e33b9 -> :sswitch_3
        0x762594a7 -> :sswitch_2
        0x7e6bff05 -> :sswitch_1
        0x7f8913f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x55117438 -> :sswitch_1c
        -0x54640064 -> :sswitch_1b
        0x21ca6267 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
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
    .locals 10

    const/4 p4, 0x2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v1}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "lock_screen_show_notifications_on_keyguard"

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move p2, v0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "/Settings/LockScreen/VisiblePattern"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x19

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "/Settings/LockScreen/FaceWidgetPosition"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x18

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "/Settings/LockScreen/ContactInformation"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p2, 0x17

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "/Settings/LockScreen/LunarCalendar"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/16 p2, 0x16

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "/Settings/LockScreen/RoamingClockHomeCity"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/16 p2, 0x15

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "/Settings/LockScreen/FaceWidget"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/16 p2, 0x14

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "/Settings/LockScreen/NotificationsToShow"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/16 p2, 0x13

    goto/16 :goto_1

    :sswitch_7
    const-string v6, "/Settings/LockScreen/AutoReverseTextColor"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/16 p2, 0x12

    goto/16 :goto_1

    :sswitch_8
    const-string v6, "/Settings/LockScreen/ShowShortcut"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/16 p2, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v6, "/Settings/LockScreen/RoamingClock"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 p2, 0x10

    goto/16 :goto_1

    :sswitch_a
    const-string v6, "/Settings/LockScreen/LockAfterTimeout"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 p2, 0xf

    goto/16 :goto_1

    :sswitch_b
    const-string v6, "/Settings/LockScreen/PowerInstantlyLocks"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 p2, 0xe

    goto/16 :goto_1

    :sswitch_c
    const-string v6, "/Settings/LockScreen/AutoFactoryReset"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 p2, 0xd

    goto/16 :goto_1

    :sswitch_d
    const-string v6, "/Settings/LockScreen/LockInstantlyWithFolding"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 p2, 0xc

    goto/16 :goto_1

    :sswitch_e
    const-string v6, "/Settings/LockScreen/Shortcut"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 p2, 0xb

    goto/16 :goto_1

    :sswitch_f
    const-string v6, "/Settings/LockScreen/HijriCalendar"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 p2, 0xa

    goto/16 :goto_1

    :sswitch_10
    const-string v6, "/Settings/LockScreen/NotificationIconOnly"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 p2, 0x9

    goto/16 :goto_1

    :sswitch_11
    const-string v6, "/Settings/LockScreen/ShowNotification"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 p2, 0x8

    goto/16 :goto_1

    :sswitch_12
    const-string v6, "/Settings/LockScreen/Transparency"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 p2, 0x7

    goto :goto_1

    :sswitch_13
    const-string v6, "/Settings/LockScreen/ShowLockDownOption"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/4 p2, 0x6

    goto :goto_1

    :sswitch_14
    const-string v6, "/Settings/LockScreen/ShowNotificationOnKeyguard"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 p2, 0x5

    goto :goto_1

    :sswitch_15
    const-string v6, "/Settings/LockScreen/TransparencyDarkMode"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 p2, 0x4

    goto :goto_1

    :sswitch_16
    const-string v6, "/Settings/LockScreen/LockNetworkAndSecurity"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 p2, 0x3

    goto :goto_1

    :sswitch_17
    const-string v6, "/Settings/LockScreen/HideContent"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_0

    :cond_18
    move p2, p4

    goto :goto_1

    :sswitch_18
    const-string v6, "/Settings/LockScreen/ShowOnAOD"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto/16 :goto_0

    :cond_19
    move p2, v2

    goto :goto_1

    :sswitch_19
    const-string v6, "/Settings/LockScreen/RoamingClockPosition"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    move p2, v1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1b

    move v1, v2

    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto/16 :goto_6

    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p0, v2, :cond_1c

    move v1, p0

    :cond_1c
    const-string p0, "face_widgets_option"

    invoke-static {p1, p0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :pswitch_2
    const-string/jumbo p1, "null"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    goto/16 :goto_6

    :pswitch_3
    const-string p0, "aodlock_support_lunar"

    invoke-static {p1, v4, p0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_4
    const-string p0, "homecity_timezone"

    invoke-static {p1, p0, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    :pswitch_5
    const-string p0, "face_widget_order"

    invoke-static {p1, p0, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p0, "facewidget_item_cnt"

    invoke-virtual {p3, v0, p0}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(ILjava/lang/String;)I

    move-result p0

    const-string p2, ";"

    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    move v4, v1

    move v5, v2

    :goto_2
    array-length v6, p2

    if-ge v4, v6, :cond_26

    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :goto_3
    move v7, v0

    goto :goto_4

    :sswitch_1a
    const-string/jumbo v7, "servicebox_calendar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    goto :goto_3

    :cond_1d
    move v7, p4

    goto :goto_4

    :sswitch_1b
    const-string/jumbo v7, "servicebox_music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_3

    :cond_1e
    move v7, v2

    goto :goto_4

    :sswitch_1c
    const-string/jumbo v7, "servicebox_alarm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_3

    :cond_1f
    move v7, v1

    :goto_4
    packed-switch v7, :pswitch_data_1

    if-ge p0, v2, :cond_20

    goto :goto_5

    :cond_20
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "add_info_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    const-string v9, "_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "faceWidget_Item_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v0, v7}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(ILjava/lang/String;)I

    move-result v7

    if-eq v7, v0, :cond_21

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_21
    add-int/2addr v5, v2

    goto :goto_5

    :pswitch_6
    const-string/jumbo v6, "todaySchedule"

    invoke-virtual {p3, v0, v6}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(ILjava/lang/String;)I

    move-result v6

    if-eq v6, v0, :cond_22

    const-string v7, "add_info_today_schedule"

    invoke-static {p1, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :pswitch_7
    const-string/jumbo v6, "musicController"

    invoke-virtual {p3, v0, v6}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(ILjava/lang/String;)I

    move-result v6

    if-eq v6, v0, :cond_22

    const-string v7, "add_info_music_control"

    invoke-static {p1, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :pswitch_8
    const-string/jumbo v6, "nextAlarm"

    invoke-virtual {p3, v0, v6}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(ILjava/lang/String;)I

    move-result v6

    if-eq v6, v0, :cond_22

    const-string v7, "add_info_alarm"

    invoke-static {p1, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_22
    :goto_5
    add-int/2addr v4, v2

    goto/16 :goto_2

    :pswitch_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lock_screen_show_silent_notifications"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :pswitch_a
    const-string/jumbo p0, "notification_text_color_inversion"

    invoke-static {p1, v4, p0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_b
    const-string p0, "lockscreen_show_shortcut"

    invoke-static {p1, v4, p0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_c
    const-string p0, "dualclock_menu_settings"

    invoke-static {p1, v4, p0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lock_screen_lock_after_timeout"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :pswitch_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_23

    move v1, v2

    :cond_23
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto/16 :goto_6

    :pswitch_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "auto_swipe_main_user"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :pswitch_10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_24

    move v1, v2

    :cond_24
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setFolderInstantlyLocks(ZI)V

    goto/16 :goto_6

    :pswitch_11
    const-string p0, "lock_application_shortcut"

    invoke-static {p1, p0, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    :pswitch_12
    const-string p0, "aodlock_support_hijri"

    invoke-static {p1, v4, p0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_13
    invoke-static {p1, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string p2, "lockscreen_minimizing_notification"

    if-nez p0, :cond_25

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_25
    invoke-static {p1, v4, p2}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lock_screen_show_notifications"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :pswitch_15
    const-string p0, "lock_noticard_opacity"

    invoke-static {p1, v4, p0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lockdown_in_power_menu"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :pswitch_17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, v5, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :pswitch_18
    const-string p0, "lock_noticard_opacity_dark_mode"

    invoke-static {p1, v4, p0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lock_function_val"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :pswitch_1a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lock_screen_allow_private_notifications"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :pswitch_1b
    const-string p0, "lockscreen_notifications_option"

    invoke-static {p1, v4, p0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_1c
    const-string/jumbo p0, "roaming_clock_option"

    invoke-static {p1, v4, p0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController$$ExternalSyntheticOutline0;->m(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_6
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x771ea347 -> :sswitch_19
        -0x723e6381 -> :sswitch_18
        -0x710e2284 -> :sswitch_17
        -0x62d9e611 -> :sswitch_16
        -0x5fbec954 -> :sswitch_15
        -0x4b7bbdf8 -> :sswitch_14
        -0x4048e8a6 -> :sswitch_13
        -0x25f91cad -> :sswitch_12
        -0x2538b8fd -> :sswitch_11
        -0x23b5d535 -> :sswitch_10
        -0x16dbd5bd -> :sswitch_f
        -0x1469563f -> :sswitch_e
        -0x12d0f62d -> :sswitch_d
        -0x1064a7d1 -> :sswitch_c
        -0x8f8d1dc -> :sswitch_b
        0x1a9a32b -> :sswitch_a
        0x6c2cf70 -> :sswitch_9
        0x865665e -> :sswitch_8
        0x27316a3e -> :sswitch_7
        0x279f62c5 -> :sswitch_6
        0x2b8a7dbc -> :sswitch_5
        0x3f4c3e7a -> :sswitch_4
        0x509e33b9 -> :sswitch_3
        0x762594a7 -> :sswitch_2
        0x7e6bff05 -> :sswitch_1
        0x7f8913f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x55117438 -> :sswitch_1c
        -0x54640064 -> :sswitch_1b
        0x21ca6267 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
