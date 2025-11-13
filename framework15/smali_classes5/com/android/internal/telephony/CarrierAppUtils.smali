.class public final Lcom/android/internal/telephony/CarrierAppUtils;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "CarrierAppUtils"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 9

    const-class v0, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v0

    :try_start_0
    const-class v1, Landroid/os/SystemConfigManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemConfigManager;

    nop

    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v6

    nop

    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v7

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierAppUtils;->getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v3, 0x0

    move-object v2, p0

    move v5, p1

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V
    .locals 9

    const-class v0, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v0

    :try_start_0
    const-class v1, Landroid/os/SystemConfigManager;

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemConfigManager;

    nop

    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v6

    nop

    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v7

    invoke-static {p3, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    const-string v6, "CarrierAppUtils"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    nop

    const-string/jumbo v0, "legacy_permission"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/permission/LegacyPermissionManager;

    move-object/from16 v9, p4

    invoke-static {v4, v9, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1e

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    goto/16 :goto_1a

    :cond_0
    move-object/from16 v11, p5

    invoke-static {v4, v11, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAssociatedAppsHelper(ILjava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const-string v14, "carrier_apps_handled"

    const/4 v15, 0x0

    invoke-static {v3, v14, v15, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_1

    const/16 v16, 0x1

    goto :goto_0

    :cond_1
    move/from16 v16, v15

    :goto_0
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v9, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_d

    if-eqz v18, :cond_1a

    :try_start_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_9

    move-object/from16 v19, v18

    move-object/from16 v0, v19

    move-object/from16 v19, v10

    :try_start_2
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_8

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2, v10}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v11
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x1

    if-ne v11, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v12

    goto/16 :goto_18

    :cond_3
    const/4 v2, 0x0

    :goto_3
    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_8

    if-eqz v11, :cond_5

    :try_start_5
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v22, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v8

    :try_start_6
    iget-object v8, v12, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v12

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v12}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v12, v21

    move-object/from16 v8, v22

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v8, v22

    goto/16 :goto_18

    :cond_4
    move-object/from16 v22, v8

    move-object/from16 v21, v12

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v21, v12

    move-object v2, v3

    move-object/from16 v20, v7

    goto/16 :goto_18

    :cond_5
    move-object/from16 v22, v8

    move-object/from16 v21, v12

    :goto_5
    :try_start_7
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v5, v8, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    const-string v12, "Update associated state ("

    move-object/from16 v20, v7

    const-string v7, "Update state ("

    const/high16 v23, 0x800000

    if-eqz v2, :cond_f

    :try_start_8
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v24
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    move/from16 v25, v2

    const-string v2, "): ENABLED for user "

    const/4 v3, 0x4

    if-nez v24, :cond_6

    if-eqz v8, :cond_7

    :cond_6
    if-eq v8, v3, :cond_7

    :try_start_9
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    and-int v3, v3, v23

    if-nez v3, :cond_8

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    goto/16 :goto_18

    :cond_7
    :goto_6
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v7, 0x2

    invoke-virtual {v3, v10, v7}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v10, v7, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_8
    if-eqz v11, :cond_e

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    nop

    move-object/from16 v27, v3

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v28, v14

    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v14, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    iget-object v14, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_4

    and-int v14, v14, v23

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    goto :goto_8

    :cond_9
    const/4 v14, 0x0

    :goto_8
    if-eqz v3, :cond_b

    move/from16 v29, v9

    const/4 v9, 0x4

    if-eq v3, v9, :cond_c

    if-nez v14, :cond_a

    goto :goto_9

    :cond_a
    move-object/from16 v31, v2

    const/4 v2, 0x1

    goto :goto_a

    :cond_b
    move/from16 v29, v9

    const/4 v9, 0x4

    :cond_c
    :goto_9
    :try_start_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v30, v3

    iget-object v3, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v5, v3, v9}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v9, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v2

    const/4 v2, 0x2

    invoke-virtual {v3, v9, v2}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    nop

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v5, v1, v9, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v9, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v3, v9, v2, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :goto_a
    move-object/from16 v3, v27

    move-object/from16 v14, v28

    move/from16 v9, v29

    move-object/from16 v2, v31

    goto/16 :goto_7

    :cond_d
    move/from16 v29, v9

    move-object/from16 v28, v14

    const/4 v2, 0x1

    goto :goto_b

    :cond_e
    move/from16 v29, v9

    move-object/from16 v28, v14

    const/4 v2, 0x1

    :goto_b
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_5

    move/from16 v9, v29

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move/from16 v29, v9

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    goto/16 :goto_18

    :cond_f
    move/from16 v25, v2

    move/from16 v29, v9

    move-object/from16 v28, v14

    const/4 v2, 0x1

    :try_start_c
    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->hidePreinstalledCarrierAppAtMostOnce()Z

    move-result v3
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_6

    const/4 v9, 0x3

    const-string v14, "): DISABLED_UNTIL_USED for user "

    if-eqz v3, :cond_10

    if-nez v16, :cond_11

    :cond_10
    :try_start_d
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_6

    if-nez v3, :cond_11

    if-nez v8, :cond_11

    :try_start_e
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v3, v3, v23

    if-eqz v3, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    move/from16 v9, v29

    goto/16 :goto_18

    :cond_11
    :goto_c
    if-eqz v11, :cond_19

    :try_start_f
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    if-eqz v16, :cond_15

    if-nez v15, :cond_13

    iget v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    const/4 v9, -0x1

    if-eq v2, v9, :cond_13

    iget v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_6

    move/from16 v9, v29

    if-le v2, v9, :cond_12

    :try_start_10
    iget v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    move-object/from16 v26, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v0, :cond_14

    goto :goto_f

    :cond_12
    move-object/from16 v26, v0

    goto :goto_e

    :cond_13
    move-object/from16 v26, v0

    move/from16 v9, v29

    :cond_14
    :goto_e
    const/4 v0, 0x0

    goto :goto_10

    :cond_15
    move-object/from16 v26, v0

    move/from16 v9, v29

    :goto_f
    const/4 v0, 0x1

    :goto_10
    nop

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v2, v2, v23

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_11

    :cond_16
    const/4 v2, 0x0

    :goto_11
    if-eqz v0, :cond_17

    if-nez v1, :cond_17

    if-eqz v2, :cond_17

    move/from16 v27, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v29, v1

    iget-object v1, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v30, v2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_12

    :cond_17
    move/from16 v27, v0

    move/from16 v29, v1

    move/from16 v30, v2

    const/4 v2, 0x3

    :goto_12
    move-object/from16 v1, p0

    move/from16 v29, v9

    move-object/from16 v0, v26

    move v9, v2

    const/4 v2, 0x1

    goto/16 :goto_d

    :cond_18
    move-object/from16 v26, v0

    move/from16 v9, v29

    goto :goto_13

    :cond_19
    move-object/from16 v26, v0

    move/from16 v9, v29

    :goto_13
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p5

    move-object/from16 v10, v19

    move-object/from16 v7, v20

    move-object/from16 v12, v21

    move-object/from16 v8, v22

    move-object/from16 v14, v28

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move/from16 v9, v29

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    goto/16 :goto_18

    :catch_7
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    goto/16 :goto_18

    :catch_8
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v21, v12

    move-object/from16 v2, p2

    goto/16 :goto_18

    :catch_9
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v19, v10

    move-object/from16 v21, v12

    move-object/from16 v2, p2

    goto :goto_18

    :cond_1a
    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v19, v10

    move-object/from16 v21, v12

    move-object/from16 v28, v14

    if-eqz v16, :cond_1c

    if-nez v15, :cond_1b

    goto :goto_14

    :cond_1b
    move-object/from16 v2, p2

    goto :goto_15

    :cond_1c
    :goto_14
    :try_start_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_c

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    :try_start_12
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_15
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    nop

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/util/TelephonyUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/internal/telephony/CarrierAppUtils$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/internal/telephony/CarrierAppUtils$$ExternalSyntheticLambda0;-><init>()V
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_b

    move-object/from16 v8, v22

    :try_start_13
    invoke-virtual {v8, v0, v1, v3, v7}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_16

    :catch_a
    move-exception v0

    goto :goto_18

    :cond_1d
    move-object/from16 v8, v22

    :goto_16
    goto :goto_19

    :catch_b
    move-exception v0

    goto :goto_17

    :catch_c
    move-exception v0

    move-object/from16 v2, p2

    :goto_17
    move-object/from16 v8, v22

    goto :goto_18

    :catch_d
    move-exception v0

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    move-object/from16 v21, v12

    :goto_18
    const-string v1, "Could not reach PackageManager"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    return-void

    :cond_1e
    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    :goto_1a
    return-void
.end method

.method private static blacklist getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 3

    :try_start_0
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x20108000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarrierAppUtils"

    const-string v2, "Could not reach PackageManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getDefaultCarrierAppCandidates(ILandroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/os/SystemConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemConfigManager;

    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    nop

    invoke-static {p0, v2, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDefaultCarrierApps(Landroid/telephony/TelephonyManager;ILandroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    nop

    invoke-virtual {p0, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getDefaultCarrierAssociatedAppsHelper(ILjava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/CarrierAssociatedAppEntry;

    iget-object v8, v7, Landroid/os/CarrierAssociatedAppEntry;->packageName:Ljava/lang/String;

    invoke-static {p0, v8, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v10, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    iget v11, v7, Landroid/os/CarrierAssociatedAppEntry;->addedInSdk:I

    invoke-direct {v10, v8, v11}, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static blacklist isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$disableCarrierAppsUntilPrivileged$0(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method
