.class public Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;
.super Ljava/lang/Object;
.source "LockScreenItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field private final FACE_WIDGET_DEFAULT_ORDER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Eternal/LockScreenItem"

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->TAG:Ljava/lang/String;

    const-string v0, "servicebox_music;servicebox_calendar;servicebox_alarm"

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->FACE_WIDGET_DEFAULT_ORDER:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Z
    .locals 1

    .line 340
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p2, "/Settings/LockScreen/ShowShortcut"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    return p2

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/Settings/LockScreen/NotificationIconOnly"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/Settings/LockScreen/ShowNotification"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 345
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object p0

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
    return p2
.end method

.method public getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 82
    new-instance v2, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 85
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v1, v6

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "/Settings/LockScreen/VisiblePattern"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "/Settings/LockScreen/FaceWidgetPosition"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "/Settings/LockScreen/ContactInformation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "/Settings/LockScreen/LunarCalendar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "/Settings/LockScreen/RoamingClockHomeCity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "/Settings/LockScreen/FaceWidget"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "/Settings/LockScreen/NotificationsToShow"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "/Settings/LockScreen/AutoReverseTextColor"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "/Settings/LockScreen/ShowShortcut"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "/Settings/LockScreen/RoamingClock"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "/Settings/LockScreen/LockAfterTimeout"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "/Settings/LockScreen/PowerInstantlyLocks"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_c
    const-string v4, "/Settings/LockScreen/AutoFactoryReset"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "/Settings/LockScreen/LockInstantlyWithFolding"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_e
    const-string v4, "/Settings/LockScreen/Shortcut"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_f
    const-string v4, "/Settings/LockScreen/HijriCalendar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_10
    const-string v4, "/Settings/LockScreen/NotificationIconOnly"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_11
    const-string v4, "/Settings/LockScreen/ShowNotification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_12
    const-string v4, "/Settings/LockScreen/Transparency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_13
    const-string v4, "/Settings/LockScreen/ShowLockDownOption"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_14
    const-string v4, "/Settings/LockScreen/LockNetworkAndSecurity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_15
    const-string v4, "/Settings/LockScreen/HideContent"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_16
    const-string v4, "/Settings/LockScreen/ShowOnAOD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    move v1, v8

    goto :goto_1

    :sswitch_17
    const-string v4, "/Settings/LockScreen/RoamingClockPosition"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    move v1, v7

    :goto_1
    const-string v4, "Eternal/LockScreenItem"

    const-string v9, ""

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_b

    .line 275
    :pswitch_0
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_1
    const-string v0, "face_widgets_option"

    .line 179
    invoke-static {v3, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_18

    move v7, v8

    .line 181
    :cond_18
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    .line 251
    :pswitch_2
    iget-object v1, v0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 252
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 254
    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_3
    const-string v0, "aodlock_support_lunar"

    .line 231
    invoke-static {v3, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v8, v0, :cond_19

    move v7, v8

    .line 233
    :cond_19
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_4
    const-string v0, "homecity_timezone"

    .line 116
    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    move-object v0, v9

    .line 120
    :cond_1a
    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 121
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_5
    const-string v0, "face_widget_order"

    .line 126
    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v9, "servicebox_music;servicebox_calendar;servicebox_alarm"

    if-eqz v1, :cond_1b

    move-object v0, v9

    .line 133
    :cond_1b
    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v1, ";"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v10, v7

    move v11, v10

    move v12, v8

    .line 138
    :goto_2
    array-length v13, v1

    if-ge v10, v13, :cond_20

    .line 139
    aget-object v13, v1, v10

    .line 140
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    :goto_3
    move v14, v6

    goto :goto_4

    :sswitch_18
    const-string v14, "servicebox_calendar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c

    goto :goto_3

    :cond_1c
    const/4 v14, 0x2

    goto :goto_4

    :sswitch_19
    const-string v14, "servicebox_music"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1d

    goto :goto_3

    :cond_1d
    move v14, v8

    goto :goto_4

    :sswitch_1a
    const-string v14, "servicebox_alarm"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e

    goto :goto_3

    :cond_1e
    move v14, v7

    :goto_4
    packed-switch v14, :pswitch_data_1

    .line 160
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add_info_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    const-string v5, "_"

    invoke-virtual {v13, v15, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v11, v11, 0x1

    .line 164
    :try_start_0
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 165
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "faceWidget_Item_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v13, :cond_1f

    goto :goto_5

    .line 168
    :catch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "There is no item in face widget. Item : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_6
    const-string v5, "add_info_today_schedule"

    .line 149
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 150
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "todaySchedule"

    invoke-virtual {v2, v14, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v6, v5, :cond_1f

    goto :goto_5

    :pswitch_7
    const-string v5, "add_info_music_control"

    .line 143
    invoke-static {v3, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 144
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "musicController"

    invoke-virtual {v2, v14, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v8, v5, :cond_1f

    :goto_5
    move v5, v8

    goto :goto_6

    :cond_1f
    move v5, v7

    :goto_6
    and-int/2addr v12, v5

    goto :goto_7

    :pswitch_8
    const-string v5, "add_info_alarm"

    .line 155
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 156
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "nextAlarm"

    invoke-virtual {v2, v14, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v6, v5, :cond_1f

    goto :goto_5

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 173
    :cond_20
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "facewidget_item_cnt"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 174
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz v12, :cond_21

    move v7, v8

    :cond_21
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_9
    const-string v0, "lock_screen_show_silent_notifications"

    .line 261
    invoke-static {v3, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v8, v0, :cond_22

    move v7, v8

    .line 263
    :cond_22
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_a
    const-string v0, "notification_text_color_inversion"

    .line 245
    invoke-static {v3, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v8, v0, :cond_23

    move v7, v8

    .line 247
    :cond_23
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_b
    const-string v0, "lockscreen_show_shortcut"

    .line 268
    invoke-static {v3, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v8, v0, :cond_24

    move v7, v8

    .line 270
    :cond_24
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_c
    :try_start_1
    const-string v0, "ro.csc.sales_code"

    .line 90
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "ril.sales_code"

    .line 92
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    const-string v0, "readSalesCode failed"

    .line 95
    invoke-static {v4, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_8
    const-string v0, "NZC"

    .line 98
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "USC"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "ACG"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "LRA"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "2DX"

    .line 99
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "XNF"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "XNX"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "XNZ"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_9

    :cond_26
    move v0, v8

    goto :goto_a

    :cond_27
    :goto_9
    move v0, v7

    :goto_a
    const-string v1, "dualclock_menu_settings"

    .line 102
    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v1, v0, :cond_28

    move v7, v8

    .line 104
    :cond_28
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_d
    const-wide/16 v0, 0x1388

    const-string v4, "lock_screen_lock_after_timeout"

    .line 280
    invoke-static {v3, v4, v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 281
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    cmp-long v0, v0, v3

    if-nez v0, :cond_29

    move v7, v8

    .line 282
    :cond_29
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    .line 286
    :pswitch_e
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_f
    const-string v0, "auto_swipe_main_user"

    .line 295
    invoke-static {v3, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_2a

    move v7, v8

    .line 297
    :cond_2a
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    .line 290
    :pswitch_10
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getFolderInstantlyLocks(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_11
    const-string v0, "lock_application_shortcut"

    .line 221
    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    move-object v0, v9

    .line 225
    :cond_2b
    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 226
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_12
    const-string v0, "aodlock_support_hijri"

    .line 238
    invoke-static {v3, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_2c

    move v7, v8

    .line 240
    :cond_2c
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_13
    const-string v0, "lockscreen_minimizing_notification"

    .line 200
    invoke-static {v3, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v8, v0, :cond_2d

    move v7, v8

    .line 202
    :cond_2d
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    :pswitch_14
    const-string v0, "lock_screen_show_notifications"

    .line 186
    invoke-static {v3, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v8, v0, :cond_2e

    move v7, v8

    .line 188
    :cond_2e
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    .line 206
    :pswitch_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->config_default_lock_noticard_opacity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "lock_noticard_opacity"

    .line 207
    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v0, v1, :cond_2f

    move v7, v8

    .line 209
    :cond_2f
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    :pswitch_16
    const-string v0, "lockdown_in_power_menu"

    .line 309
    invoke-static {v3, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 310
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_30

    move v7, v8

    .line 311
    :cond_30
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    :pswitch_17
    const-string v0, "lock_function_val"

    .line 302
    invoke-static {v3, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_31

    move v7, v8

    .line 304
    :cond_31
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    :pswitch_18
    const-string v0, "lock_screen_allow_private_notifications"

    .line 193
    invoke-static {v3, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v8, v0, :cond_32

    move v7, v8

    .line 195
    :cond_32
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    :pswitch_19
    const-string v0, "lockscreen_notifications_option"

    .line 214
    invoke-static {v3, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_33

    move v7, v8

    .line 216
    :cond_33
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    :pswitch_1a
    const-string v0, "roaming_clock_option"

    .line 109
    invoke-static {v3, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez v0, :cond_34

    move v7, v8

    .line 111
    :cond_34
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    :cond_35
    :goto_b
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x771ea347 -> :sswitch_17
        -0x723e6381 -> :sswitch_16
        -0x710e2284 -> :sswitch_15
        -0x62d9e611 -> :sswitch_14
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
        -0x55117438 -> :sswitch_1a
        -0x54640064 -> :sswitch_19
        0x21ca6267 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isValid(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 10

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 354
    invoke-virtual {p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object p4

    .line 356
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 360
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p2, v4

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "/Settings/LockScreen/VisiblePattern"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x17

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "/Settings/LockScreen/FaceWidgetPosition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "/Settings/LockScreen/ContactInformation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p2, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "/Settings/LockScreen/LunarCalendar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/16 p2, 0x14

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "/Settings/LockScreen/RoamingClockHomeCity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/16 p2, 0x13

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "/Settings/LockScreen/FaceWidget"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/16 p2, 0x12

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "/Settings/LockScreen/NotificationsToShow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/16 p2, 0x11

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "/Settings/LockScreen/AutoReverseTextColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/16 p2, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "/Settings/LockScreen/ShowShortcut"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/16 p2, 0xf

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "/Settings/LockScreen/RoamingClock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 p2, 0xe

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "/Settings/LockScreen/LockAfterTimeout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 p2, 0xd

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "/Settings/LockScreen/PowerInstantlyLocks"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 p2, 0xc

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "/Settings/LockScreen/AutoFactoryReset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 p2, 0xb

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "/Settings/LockScreen/LockInstantlyWithFolding"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 p2, 0xa

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "/Settings/LockScreen/Shortcut"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 p2, 0x9

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "/Settings/LockScreen/HijriCalendar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 p2, 0x8

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "/Settings/LockScreen/NotificationIconOnly"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 p2, 0x7

    goto :goto_1

    :sswitch_11
    const-string v0, "/Settings/LockScreen/ShowNotification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 p2, 0x6

    goto :goto_1

    :sswitch_12
    const-string v0, "/Settings/LockScreen/Transparency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 p2, 0x5

    goto :goto_1

    :sswitch_13
    const-string v0, "/Settings/LockScreen/ShowLockDownOption"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/4 p2, 0x4

    goto :goto_1

    :sswitch_14
    const-string v0, "/Settings/LockScreen/LockNetworkAndSecurity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 p2, 0x3

    goto :goto_1

    :sswitch_15
    const-string v0, "/Settings/LockScreen/HideContent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_0

    :cond_16
    move p2, v2

    goto :goto_1

    :sswitch_16
    const-string v0, "/Settings/LockScreen/ShowOnAOD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_0

    :cond_17
    move p2, v5

    goto :goto_1

    :sswitch_17
    const-string v0, "/Settings/LockScreen/RoamingClockPosition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_0

    :cond_18
    move p2, v3

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_6

    .line 478
    :pswitch_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_19

    move v3, v5

    .line 479
    :cond_19
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto/16 :goto_6

    .line 421
    :pswitch_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p0, v5, :cond_1a

    move v3, p0

    :cond_1a
    const-string p0, "face_widgets_option"

    .line 422
    invoke-static {p1, p0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :pswitch_2
    const-string p1, "null"

    .line 462
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 463
    iget-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 464
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, p4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 450
    :pswitch_3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "aodlock_support_lunar"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :pswitch_4
    const-string p0, "homecity_timezone"

    .line 370
    invoke-static {p1, p0, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    :pswitch_5
    const-string p0, "face_widget_order"

    .line 376
    invoke-static {p1, p0, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p0, "facewidget_item_cnt"

    .line 379
    invoke-virtual {p3, p0, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const-string p2, ";"

    .line 381
    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    move p4, v3

    move v0, v5

    .line 382
    :goto_2
    array-length v6, p2

    if-ge p4, v6, :cond_23

    .line 384
    aget-object v6, p2, p4

    .line 385
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :goto_3
    move v7, v4

    goto :goto_4

    :sswitch_18
    const-string v7, "servicebox_calendar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    goto :goto_3

    :cond_1b
    move v7, v2

    goto :goto_4

    :sswitch_19
    const-string v7, "servicebox_music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    goto :goto_3

    :cond_1c
    move v7, v5

    goto :goto_4

    :sswitch_1a
    const-string v7, "servicebox_alarm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    goto :goto_3

    :cond_1d
    move v7, v3

    :goto_4
    packed-switch v7, :pswitch_data_1

    if-ge p0, v5, :cond_1e

    goto :goto_5

    .line 408
    :cond_1e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add_info_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    const-string v9, "_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 409
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "faceWidget_Item_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v4, :cond_1f

    .line 411
    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_6
    const-string v6, "todaySchedule"

    .line 393
    invoke-virtual {p3, v6, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v4, :cond_20

    const-string v7, "add_info_today_schedule"

    .line 395
    invoke-static {p1, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :pswitch_7
    const-string v6, "musicController"

    .line 387
    invoke-virtual {p3, v6, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v4, :cond_20

    const-string v7, "add_info_music_control"

    .line 389
    invoke-static {p1, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :pswitch_8
    const-string v6, "nextAlarm"

    .line 399
    invoke-virtual {p3, v6, v4}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v4, :cond_20

    const-string v7, "add_info_alarm"

    .line 401
    invoke-static {p1, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_20
    :goto_5
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_2

    .line 469
    :pswitch_9
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lock_screen_show_silent_notifications"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 458
    :pswitch_a
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "notification_text_color_inversion"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 473
    :pswitch_b
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lockscreen_show_shortcut"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 362
    :pswitch_c
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "dualclock_menu_settings"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 483
    :pswitch_d
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lock_screen_lock_after_timeout"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 487
    :pswitch_e
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_21

    move v3, v5

    .line 488
    :cond_21
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto/16 :goto_6

    .line 497
    :pswitch_f
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "auto_swipe_main_user"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 492
    :pswitch_10
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_22

    move v3, v5

    .line 493
    :cond_22
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setFolderInstantlyLocks(ZI)V

    goto/16 :goto_6

    :pswitch_11
    const-string p0, "lock_application_shortcut"

    .line 446
    invoke-static {p1, p0, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    .line 454
    :pswitch_12
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "aodlock_support_hijri"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .line 434
    :pswitch_13
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lockscreen_minimizing_notification"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 426
    :pswitch_14
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lock_screen_show_notifications"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 438
    :pswitch_15
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lock_noticard_opacity"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 505
    :pswitch_16
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lockdown_in_power_menu"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 501
    :pswitch_17
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lock_function_val"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 430
    :pswitch_18
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lock_screen_allow_private_notifications"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 442
    :pswitch_19
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "lockscreen_notifications_option"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 366
    :pswitch_1a
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p2, "roaming_clock_option"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_23
    :goto_6
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x771ea347 -> :sswitch_17
        -0x723e6381 -> :sswitch_16
        -0x710e2284 -> :sswitch_15
        -0x62d9e611 -> :sswitch_14
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
        -0x55117438 -> :sswitch_1a
        -0x54640064 -> :sswitch_19
        0x21ca6267 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
