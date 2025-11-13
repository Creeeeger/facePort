.class public final Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyDialogController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyDialogController;->permissionManager:Landroid/permission/PermissionManager;

    iget-object v1, v1, Lcom/android/systemui/privacy/PrivacyDialogController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    check-cast v1, Lcom/android/systemui/appops/AppOpsControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    invoke-virtual {v2, v1}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData(Z)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyDialogController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v3, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v3, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUnfilteredPermGroupUsage(Ljava/util/List;)V

    check-cast v1, Ljava/lang/Iterable;

    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v4, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->$context:Landroid/content/Context;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionGroupUsage;

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x440149cd

    if-eq v8, v9, :cond_4

    const v9, 0x31640343

    if-eq v8, v9, :cond_2

    const v9, 0x5e404d38

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "android.permission-group.MICROPHONE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_2

    :cond_2
    const-string v8, "android.permission-group.LOCATION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    sget-object v7, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_2

    :cond_4
    const-string v8, "android.permission-group.CAMERA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_9

    sget-object v8, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    iget-object v9, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    if-eq v7, v8, :cond_6

    sget-object v8, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v7, v8, :cond_7

    :cond_6
    iget-object v8, v9, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-boolean v8, v8, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    sget-object v8, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v7, v8, :cond_8

    iget-object v8, v9, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-boolean v8, v8, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    move-object v12, v7

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    :goto_4
    move-object v7, v2

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v9, v11, :cond_a

    goto :goto_5

    :cond_b
    const/4 v8, 0x0

    :goto_5
    check-cast v8, Landroid/content/pm/UserInfo;

    if-nez v8, :cond_d

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_6

    :cond_c
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    const/4 v10, 0x0

    goto/16 :goto_13

    :cond_d
    :goto_6
    if-eqz v12, :cond_1c

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_e

    const-string v7, ""

    :goto_7
    move-object v15, v7

    goto :goto_8

    :cond_e
    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getUid()I

    move-result v11

    :try_start_0
    iget-object v13, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v13, v7, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v13, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v11

    goto :goto_7

    :catch_0
    const-string v11, "Label not found for: "

    invoke-virtual {v11, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "PrivacyDialogController"

    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_8
    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    sget-boolean v7, Lcom/android/systemui/ScRune;->QUICK_SUPPORT_LOCATION_PRIVACY_CHIP:Z

    if-eqz v7, :cond_16

    iget-object v7, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    sget-object v13, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-eq v12, v13, :cond_f

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v18, v9

    goto/16 :goto_d

    :cond_f
    iget-object v13, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->LOCATION_OPS:[I

    array-length v9, v13

    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_9
    if-ge v10, v9, :cond_15

    aget v19, v13, v10

    invoke-static/range {v19 .. v19}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getUid()I

    move-result v19

    move-object/from16 v27, v1

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    move-object/from16 v28, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v21, v9

    const/4 v9, 0x0

    const/16 v19, 0x0

    :goto_a
    if-ge v9, v2, :cond_11

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    move/from16 v23, v2

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v19, 0x1

    :cond_10
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v23

    goto :goto_a

    :cond_11
    if-nez v19, :cond_12

    const/16 v18, 0x1

    goto :goto_d

    :cond_12
    iget-object v2, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v11, v9, v1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getUid()I

    move-result v2

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v7

    const/4 v7, -0x1

    invoke-static {v4, v11, v7, v2, v9}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_13

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_14

    :goto_b
    const/16 v18, 0x1

    goto :goto_c

    :cond_13
    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_14

    goto :goto_b

    :cond_14
    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v19

    move/from16 v9, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    goto :goto_9

    :cond_15
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    :goto_d
    move/from16 v26, v18

    goto :goto_e

    :cond_16
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    const/16 v26, 0x0

    :goto_e
    new-instance v1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getAttributionTag()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getAttributionLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getProxyLabel()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getLastAccessTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->isActive()Z

    move-result v21

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    move/from16 v22, v8

    goto :goto_f

    :cond_17
    const/16 v22, 0x0

    :goto_f
    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    move-result v23

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    move-result-object v24

    if-eqz v26, :cond_18

    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.samsung.android.intent.action.LOCATION_RECENT_ACCESS"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "isOnlyShowSystem"

    const/4 v11, 0x1

    invoke-virtual {v6, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v29, v4

    move-object/from16 v25, v6

    goto/16 :goto_12

    :cond_18
    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getAttributionTag()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual {v6}, Landroid/permission/PermissionGroupUsage;->getAttributionLabel()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_19

    const/16 v16, 0x1

    goto :goto_10

    :cond_19
    const/16 v16, 0x0

    :goto_10
    if-eqz v19, :cond_1a

    if-eqz v16, :cond_1a

    iget-object v6, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->locationManager:Landroid/location/LocationManager;

    move-object/from16 v29, v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v6, v0, v8, v4}, Landroid/location/LocationManager;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MANAGE_PERMISSION_USAGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.PERMISSION_GROUP_NAME"

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.intent.extra.ATTRIBUTION_TAGS"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.SHOWING_ATTRIBUTION"

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_1b

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_1b

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v11, "android.permission.START_VIEW_PERMISSION_USAGE"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    new-instance v6, Landroid/content/ComponentName;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_11

    :cond_1a
    move-object/from16 v29, v4

    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.USER"

    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_11
    move-object/from16 v25, v0

    :goto_12
    move-object v11, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move-wide/from16 v19, v9

    invoke-direct/range {v11 .. v26}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;-><init>(Lcom/android/systemui/privacy/PrivacyType;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZZZLjava/lang/CharSequence;Landroid/content/Intent;Z)V

    move-object v10, v1

    goto :goto_13

    :cond_1c
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    const/4 v0, 0x0

    move-object v10, v0

    :goto_13
    if-eqz v10, :cond_1d

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v4, v29

    goto/16 :goto_0

    :cond_1e
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyDialogController;->uiExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;

    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->$context:Landroid/content/Context;

    invoke-direct {v3, v1, v5, v0}, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/util/List;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
