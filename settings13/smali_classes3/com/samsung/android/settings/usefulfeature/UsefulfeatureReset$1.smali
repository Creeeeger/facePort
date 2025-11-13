.class Lcom/samsung/android/settings/usefulfeature/UsefulfeatureReset$1;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "UsefulfeatureReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/UsefulfeatureReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method


# virtual methods
.method public loadCscSettings(Landroid/content/Context;Lcom/samsung/android/settings/csc/CscParser;)V
    .locals 7

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 398
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "Settings.Main.Phone.Motion.DirectCall"

    .line 399
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "off"

    const-string v4, "on"

    const-string v5, "UsefulfeatureReset"

    if-eqz v0, :cond_1

    .line 400
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Settings.Motion.DirctCall"

    .line 401
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "motion_pick_up_to_call_out"

    if-eqz v0, :cond_0

    .line 403
    invoke-static {p0, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 405
    invoke-static {p0, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string p1, "DirctCall is not found"

    .line 407
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-string p1, "Settings.Main.Phone.Motion.SmartAlert"

    .line 410
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 411
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "motion_pick_up"

    if-eqz v0, :cond_3

    .line 414
    invoke-static {p0, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 415
    :cond_3
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 416
    invoke-static {p0, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    const-string p1, "SmartAlert is not found"

    .line 418
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const-string p1, "Settings.Main.Phone.Motion.TurnOver"

    .line 421
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 422
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 423
    invoke-static {v5, p1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "motion_overturn"

    if-eqz v0, :cond_6

    .line 425
    invoke-static {p0, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 426
    :cond_6
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 427
    invoke-static {p0, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    const-string p1, "TurnOver is not found"

    .line 430
    invoke-static {v5, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    const-string p1, "Settings.Main.Phone.Motion.PalmSwipe"

    .line 432
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 433
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 434
    invoke-static {v5, p1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "surface_palm_swipe"

    if-eqz v0, :cond_9

    .line 436
    invoke-static {p0, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 437
    :cond_9
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 438
    invoke-static {p0, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_a
    const-string p1, "PalmSwipe is not found"

    .line 441
    invoke-static {v5, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    const-string p1, "Settings.Main.Phone.Motion.PalmTouch"

    .line 444
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 445
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 446
    invoke-static {v5, p1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "surface_palm_touch"

    if-eqz v0, :cond_c

    .line 448
    invoke-static {p0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 449
    :cond_c
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 450
    invoke-static {p0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_d
    const-string p0, "PalmTouch is not found"

    .line 453
    invoke-static {v5, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_4
    return-void
.end method

.method public resetSettings(Landroid/content/Context;)V
    .locals 12

    const-string p0, "UsefulfeatureReset"

    const-string v0, "Reset Usefulfeature Settings called"

    .line 59
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 62
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    .line 66
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v1

    const-string v7, "long_press_app"

    const-string v8, "short_press_app"

    const-string v9, "torch/torch"

    if-eqz v1, :cond_0

    .line 67
    invoke-static {p0, v8, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "quickMessageSender/quickMessageSender"

    .line 68
    invoke-static {p0, v7, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "xcover_top_short_press_app"

    .line 69
    invoke-static {p0, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "xcover_top_long_press_app"

    .line 70
    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "xcover_top_key_on_lockscreen"

    .line 71
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    invoke-static {v6, v6, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    const-string v1, "quickMessageSender/quickMessageSender"

    .line 74
    invoke-static {v5, v5, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 75
    invoke-static {v5, v3, v9}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    const/4 v1, 0x4

    .line 76
    invoke-static {v6, v1, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v1

    const-string v10, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    if-eqz v1, :cond_1

    .line 78
    invoke-static {p0, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    invoke-static {p0, v7, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    invoke-static {v5, v6, v9}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 82
    invoke-static {v5, v5, v10}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {p0, v8, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "com.samsung.android.calendar/com.samsung.android.app.calendar.activity.MainActivity"

    .line 85
    invoke-static {p0, v7, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    invoke-static {v5, v6, v10}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    const-string v1, "com.samsung.android.calendar/com.samsung.android.app.calendar.activity.MainActivity"

    .line 88
    invoke-static {v5, v5, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    :goto_0
    const-string v1, "active_key_on_lockscreen"

    .line 90
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result v1

    const-string v7, "dedicated_app_label_xcover"

    const-string v8, "dedicated_app_xcover"

    const-string v9, "dedicated_app_xcover_switch"

    if-eqz v1, :cond_2

    .line 93
    invoke-static {p0, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "com.verizon.pushtotalkplus"

    .line 94
    invoke-static {p0, v8, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "Push To Talk+"

    .line 95
    invoke-static {p0, v7, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "com.verizon.pushtotalkplus"

    .line 96
    invoke-static {p1, v5, v6, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasBMCPttEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    invoke-static {p0, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "com.bell.ptt"

    .line 99
    invoke-static {p0, v8, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "Push-to-Talk"

    .line 100
    invoke-static {p0, v7, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "com.bell.ptt"

    .line 101
    invoke-static {p1, v5, v6, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasTMOPttEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    invoke-static {p0, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "com.sprint.sdcplus"

    .line 104
    invoke-static {p0, v8, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "TDC"

    .line 105
    invoke-static {p0, v7, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "com.sprint.sdcplus"

    .line 106
    invoke-static {p1, v5, v6, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_4
    invoke-static {p0, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    invoke-static {p0, v8, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    invoke-static {p0, v7, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    invoke-static {p1, v6, v6, v4}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    .line 114
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "dedicated_app_top_switch"

    .line 115
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "dedicated_app_top"

    .line 116
    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "dedicated_app_label_top"

    .line 117
    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    invoke-static {p1, v6, v2, v4}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    .line 123
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 124
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v7, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    invoke-virtual {v1, v7, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "TvMode"

    .line 125
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v7, "function_key_config_doublepress"

    if-eqz v1, :cond_6

    const-string v1, "com.samsung.tvmode"

    .line 126
    invoke-static {p1, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 128
    invoke-static {p0, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 131
    :cond_6
    invoke-static {p0, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    const-string v1, "function_key_config_doublepress_type"

    .line 134
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "function_key_config_doublepress_value"

    .line 137
    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    invoke-static {p0, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_7

    move v1, v5

    goto :goto_3

    :cond_7
    move v1, v6

    :goto_3
    const-string v7, "function_key_config_doublepress_type"

    .line 141
    invoke-static {p0, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v1, :cond_8

    .line 143
    invoke-static {p1, v5, v2, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V

    goto :goto_4

    .line 145
    :cond_8
    invoke-static {p1, v6, v2, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V

    .line 149
    :goto_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v1

    const-string v2, "function_key_config_longpress_type"

    if-eqz v1, :cond_9

    .line 150
    invoke-static {p0, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 152
    :cond_9
    invoke-static {p0, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    :goto_5
    invoke-static {p0, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 157
    invoke-static {p1, v5, v5, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V

    .line 159
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasSideKeyDedicatedAppEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 160
    invoke-static {p1, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppSwitch(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p1, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppState(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 161
    :cond_a
    invoke-static {p1, v3, v6}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setDedicatedAppSwitch(Landroid/content/Context;IZ)V

    .line 162
    invoke-static {p1, v3, v4}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 163
    invoke-static {p1, v3, v4}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    :cond_b
    const-string v1, "VZW"

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    const-string v1, "automatic_unlock"

    .line 172
    invoke-static {p0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_d
    :goto_6
    const-string v1, "automatic_unlock"

    .line 170
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    :goto_7
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasFeatureAutoScreenTurnOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isNFCAuthCover(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "auto_screen_on"

    .line 175
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_e
    const-string v1, "auto_screen_on"

    .line 177
    invoke-static {p0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_8
    const-string v1, "cover_text_direction"

    .line 181
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "direct_share"

    .line 184
    invoke-static {p0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "lift_to_wake"

    .line 187
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPalmTouchToSleep()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "palm_touch_to_sleep"

    .line 191
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    :cond_f
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DEFAULT_DOUBLE_TAP_TO_WAKE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "adaptive_brightness"

    .line 196
    invoke-static {p0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "screen_brightness_mode"

    .line 197
    invoke-static {p0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "sensor"

    .line 201
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    const/4 v7, -0x1

    .line 202
    invoke-virtual {v4, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    move v7, v6

    move v8, v7

    move v9, v8

    .line 203
    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_12

    .line 204
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Sensor;

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getType()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_10

    move v8, v5

    :cond_10
    const v11, 0x10044

    if-ne v10, v11, :cond_11

    move v9, v5

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_12
    if-nez v8, :cond_14

    .line 210
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "ADAPTIVE_BRIGHTNESS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    if-eq v2, v5, :cond_15

    :cond_13
    if-eqz v9, :cond_14

    if-eq v3, v5, :cond_15

    :cond_14
    if-nez v1, :cond_17

    .line 213
    :cond_15
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDoubleTapMenu()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "double_tab_to_wake_up"

    .line 214
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_16
    const-string v1, "double_tap_to_sleep"

    .line 217
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    .line 220
    :cond_17
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDoubleTapMenu()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "double_tab_to_wake_up"

    .line 221
    invoke-static {p0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_18
    const-string v1, "double_tap_to_sleep"

    .line 224
    invoke-static {p0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_a
    const-string v1, "intelligent_sleep_mode"

    .line 228
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportFingerPrint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "fingerprint_gesture_quick"

    .line 233
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportFingerSensorGestureSpay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "fingerprint_gesture_spay"

    .line 235
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    :cond_19
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "surface_palm_swipe"

    const-string v3, "surface_palm_touch"

    const-string v4, "motion_overturn"

    const-string v7, "motion_pick_up_to_call_out"

    const-string v8, "motion_pick_up"

    if-eqz v1, :cond_20

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 242
    invoke-static {p0, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b

    .line 244
    :cond_1a
    invoke-static {p0, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_b
    const-string v1, "VZW"

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "direct_call"

    .line 247
    invoke-static {p1, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_c

    .line 250
    :cond_1b
    invoke-static {p0, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d

    .line 248
    :cond_1c
    :goto_c
    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_d
    const-string v1, "motion_merged_mute_pause"

    .line 252
    invoke-static {p0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v1, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 254
    invoke-static {p0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e

    .line 256
    :cond_1d
    invoke-static {p0, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    :goto_e
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 259
    invoke-static {p0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f

    .line 261
    :cond_1e
    invoke-static {p0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_f
    const-string v1, "AIO"

    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 264
    invoke-static {p0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    .line 266
    :cond_1f
    invoke-static {p0, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    .line 269
    :cond_20
    invoke-static {p0, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "motion_merged_mute_pause"

    .line 271
    invoke-static {p0, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    invoke-static {p0, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    invoke-static {p0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    invoke-static {p0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    :goto_10
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_ONEHAND_MODE_POLICY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "one_handed_op_wakeup_type"

    const-string v3, "any_screen_enabled"

    if-nez v1, :cond_23

    const-string v1, "DefaultOn"

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 282
    invoke-static {p0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_11

    .line 284
    :cond_21
    invoke-static {p0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_11
    const-string v1, "GestureType"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 287
    invoke-static {p0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12

    .line 289
    :cond_22
    invoke-static {p0, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12

    .line 292
    :cond_23
    invoke-static {p0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    invoke-static {p0, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    :goto_12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_24

    move v0, v5

    goto :goto_13

    :cond_24
    move v0, v6

    .line 297
    :goto_13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_25

    move v1, v5

    goto :goto_14

    :cond_25
    move v1, v6

    :goto_14
    if-eqz v1, :cond_26

    if-eqz v0, :cond_26

    move v0, v5

    goto :goto_15

    :cond_26
    move v0, v6

    .line 298
    :goto_15
    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setOneHandModeKeyCustomizationInfo(Z)V

    const-string v0, "one_handed_op_show_hard_keys"

    .line 300
    invoke-static {p0, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "is_enabled"

    .line 302
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "hdr_effect"

    .line 308
    invoke-static {p0, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "DisplaySolution"

    .line 310
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 313
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v4, v3, [Ljava/lang/String;

    .line 314
    array-length v7, v2

    invoke-static {v2, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    array-length v2, v2

    array-length v7, v1

    invoke-static {v1, v6, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v6

    :goto_16
    if-ge v1, v3, :cond_28

    .line 317
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_27

    .line 318
    aget-object v2, v4, v1

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setVideoEnhancerSettingState(Ljava/lang/String;I)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 325
    :cond_28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "force_resizable_activities"

    .line 326
    invoke-static {p0, v0, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    :cond_29
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 332
    :cond_2a
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x40

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityTaskManager;->resetUserPackageSettings(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_17

    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 339
    :cond_2b
    :goto_17
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 341
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x8

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityTaskManager;->resetUserPackageSettings(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_18

    :catch_1
    move-exception v0

    .line 343
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 348
    :cond_2c
    :goto_18
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableNoSubDisplay()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2d
    const-string v0, "show_setting_icon"

    .line 349
    invoke-static {p0, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    :try_start_2
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x10

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityTaskManager;->resetUserPackageSettings(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_19

    :catch_2
    move-exception v0

    .line 353
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 358
    :cond_2e
    :goto_19
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 360
    :cond_2f
    :try_start_3
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x20

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityTaskManager;->resetUserPackageSettings(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1a

    :catch_3
    move-exception v0

    .line 362
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 367
    :cond_30
    :goto_1a
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_31

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x1fc34

    if-le v0, v2, :cond_32

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_31
    const-string v0, "multi_window_menu_in_full_screen"

    .line 368
    invoke-static {p0, v0, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    :cond_32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 373
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSplitImmersiveMode(Z)V

    .line 377
    :cond_33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "open_in_pop_up_view"

    .line 378
    invoke-static {p0, v0, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    :cond_34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_35

    const-string p1, "open_in_split_screen_view"

    .line 383
    invoke-static {p0, p1, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_35
    return-void
.end method
