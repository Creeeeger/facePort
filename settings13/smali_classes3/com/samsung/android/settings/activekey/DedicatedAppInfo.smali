.class public Lcom/samsung/android/settings/activekey/DedicatedAppInfo;
.super Ljava/lang/Object;
.source "DedicatedAppInfo.java"


# direct methods
.method public static getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppDBKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDedicatedAppDBKey(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "dedicated_app_side"

    goto :goto_0

    :cond_1
    const-string p0, "dedicated_app_top"

    goto :goto_0

    :cond_2
    const-string p0, "dedicated_app_xcover"

    :goto_0
    return-object p0
.end method

.method public static getDedicatedAppLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppLabelDBKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDedicatedAppLabelDBKey(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "dedicated_app_label_side"

    goto :goto_0

    :cond_1
    const-string p0, "dedicated_app_label_top"

    goto :goto_0

    :cond_2
    const-string p0, "dedicated_app_label_xcover"

    :goto_0
    return-object p0
.end method

.method public static getDedicatedAppState(Landroid/content/Context;I)Z
    .locals 0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppDBKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, ""

    .line 66
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

.method public static getDedicatedAppSwitch(Landroid/content/Context;I)Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppSwitchDBKey(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getDedicatedAppSwitchDBKey(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "dedicated_app_side_switch"

    goto :goto_0

    :cond_1
    const-string p0, "dedicated_app_top_switch"

    goto :goto_0

    :cond_2
    const-string p0, "dedicated_app_xcover_switch"

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized loadAppList(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;

    monitor-enter v0

    .line 154
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 158
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    const-string v3, "DedicatedAppInfo"

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " installedApps.size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    .line 161
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 162
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    const-string v7, "com.samsung.android.knox.intent.action.addon.SIDE_KEY_DELTA"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 164
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 170
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    const-string v7, "com.samsung.android.knox.intent.action.HARD_KEY_PRESS"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.att.eptt"

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 172
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
    :cond_3
    new-instance v2, Lcom/samsung/android/settings/activekey/DedicatedAppInfo$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    if-eq p1, v3, :cond_7

    .line 188
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasVzwPttEnable(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    if-eq p1, v3, :cond_7

    const-string p0, "com.verizon.pushtotalkplus"

    .line 190
    invoke-virtual {v1, v4, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 192
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasEPttEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "com.att.eptt"

    .line 193
    invoke-virtual {v1, v4, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 194
    :cond_5
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasBMCPttEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eq p1, v3, :cond_7

    const-string p0, "com.bell.ptt"

    .line 196
    invoke-virtual {v1, v4, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 198
    :cond_6
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasTMOPttEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "com.sprint.sdcplus"

    .line 199
    invoke-virtual {v1, v4, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 203
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    :cond_7
    :goto_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppDBKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[save] Press Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/ app : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DedicatedAppInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V

    return-void
.end method

.method public static saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppLabelDBKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[save] Press Type : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/ app label : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DedicatedAppInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setB2BDeltaKeyCustomizationInfo(Landroid/content/Context;ZILjava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "com.samsung.android.knox.intent.extra.KEY_CODE"

    const/high16 v4, 0x1000000

    const-string v5, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    const/16 v6, 0x3b7

    const/4 v7, 0x0

    const-string v8, "failed to removeKeyCustomizationInfo "

    const/4 v9, 0x1

    const/4 v10, 0x3

    const-string v11, "DedicatedAppInfo"

    if-ne v0, v10, :cond_1

    const/16 v0, 0x1a

    if-eqz p1, :cond_0

    .line 214
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 216
    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setB2BDeltaKeyCustomizationInfo side key sendbroadcast intent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v13, 0x3

    const/16 v14, 0x3b7

    const/16 v16, 0x2

    const/16 v15, 0x1a

    move-object v12, v0

    move-object/from16 v17, v6

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 221
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 227
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, v6, v10, v0}, Landroid/view/IWindowManager;->removeKeyCustomizationInfo(III)V

    const-string v0, "setB2BDeltaKeyCustomizationInfo side key removeKeyCustomizationInfo"

    .line 228
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "function_key_config_longpress_type"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    xor-int/lit8 v2, p1, 0x1

    .line 234
    invoke-static {v1, v2, v9, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSideKeyCustomizationInfo(Landroid/content/Context;ZII)V

    goto/16 :goto_9

    :cond_1
    const/4 v12, 0x2

    const/4 v13, 0x4

    const/16 v14, 0x3f7

    const/16 v15, 0x437

    if-eq v0, v12, :cond_2

    move/from16 v22, v9

    move v12, v14

    goto :goto_1

    :cond_2
    move v7, v10

    move/from16 v22, v13

    move v12, v15

    :goto_1
    if-eqz p1, :cond_b

    if-eqz v2, :cond_d

    .line 249
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "com.att.firstnet.grey"

    .line 250
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY"

    const-string v7, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    const/4 v9, 0x0

    if-eqz v1, :cond_5

    if-ne v12, v14, :cond_3

    .line 254
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_3
    if-ne v12, v15, :cond_4

    .line 256
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_a

    .line 259
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.sptt.keyevent.KeyEventService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setB2BDeltaKeyCustomizationInfo MCPTT startServiceAsUser intent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v17, 0x3

    const/16 v18, 0x3b7

    const/16 v20, 0x3

    move-object/from16 v16, v0

    move/from16 v19, v12

    move-object/from16 v21, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 263
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    .line 266
    :goto_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_7

    :cond_5
    const-string v0, "com.att.eptt"

    .line 268
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.sprint.sdcplus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.verizon.pushtotalkplus"

    .line 269
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.bell.ptt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 290
    :cond_6
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 292
    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setB2BDeltaKeyCustomizationInfo sendbroadcast intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v17, 0x3

    const/16 v18, 0x3b7

    const/16 v20, 0x2

    move-object/from16 v16, v1

    move/from16 v19, v12

    move-object/from16 v21, v0

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 297
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 299
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    :cond_7
    :goto_4
    if-ne v12, v14, :cond_8

    .line 273
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :cond_8
    if-ne v12, v15, :cond_9

    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object v0, v9

    :goto_5
    if-eqz v0, :cond_a

    const/16 v1, 0x20

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setB2BDeltaKeyCustomizationInfo sendbroadcast intent = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " / package = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v17, 0x3

    const/16 v18, 0x3b7

    const/16 v20, 0x2

    move-object/from16 v16, v1

    move/from16 v19, v12

    move-object/from16 v21, v0

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 283
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    .line 286
    :goto_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 304
    :cond_a
    :goto_7
    :try_start_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/16 v1, 0x44f

    invoke-interface {v0, v1, v10, v12}, Landroid/view/IWindowManager;->removeKeyCustomizationInfo(III)V

    .line 305
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, v1, v13, v12}, Landroid/view/IWindowManager;->removeKeyCustomizationInfo(III)V

    const-string v0, "setExtraKeyCustomizationInfo removeKeyCustomizationInfo"

    .line 306
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 313
    :cond_b
    invoke-static {v1, v7}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getPressActionState(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 314
    invoke-static {v1, v7}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v9, v7, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    .line 319
    :cond_c
    :try_start_6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, v6, v10, v12}, Landroid/view/IWindowManager;->removeKeyCustomizationInfo(III)V

    const-string v0, "setB2BDeltaKeyCustomizationInfo removeKeyCustomizationInfo"

    .line 320
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move/from16 v13, v22

    .line 325
    invoke-static {v1, v13}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getPressActionState(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 326
    invoke-static {v1, v13}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v9, v13, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->setExtraKeyCustomizationInfo(ZILjava/lang/String;)V

    :cond_d
    :goto_9
    return-void
.end method

.method public static setDedicatedAppSwitch(Landroid/content/Context;IZ)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedAppSwitchDBKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[save] Press Type : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/ switch : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DedicatedAppInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
