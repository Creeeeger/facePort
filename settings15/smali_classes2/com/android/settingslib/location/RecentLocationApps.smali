.class public final Lcom/android/settingslib/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field static final LOCATION_PERMISSION_OPS:[I

.field static final LOCATION_REQUEST_OPS:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x29

    const/16 v1, 0x2a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_REQUEST_OPS:[I

    const/4 v0, 0x1

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_PERMISSION_OPS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    return-void
.end method


# virtual methods
.method public final getAppListSorted(Z)Ljava/util/List;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    sget-object v3, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_REQUEST_OPS:[I

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_12

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v13

    const/16 v14, 0x139f

    if-ne v12, v14, :cond_1

    const-string v14, "com.samsung.android.networkdiagnostic"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    :goto_2
    const/16 v3, 0x139e

    if-ne v12, v3, :cond_2

    const-string v3, "com.samsung.android.ipsgeofence"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-nez v14, :cond_3

    if-nez v3, :cond_3

    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    :goto_4
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    move/from16 v19, v4

    goto/16 :goto_8

    :cond_4
    const/16 v3, 0x1395

    if-ne v12, v3, :cond_5

    const-string v3, "com.sec.location.nsflp2"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    if-nez p1, :cond_8

    sget-object v3, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_PERMISSION_OPS:[I

    array-length v14, v3

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_8

    aget v16, v3, v15

    move-object/from16 v17, v2

    invoke-static/range {v16 .. v16}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v3

    invoke-virtual {v1, v2, v11, v13}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    move/from16 v19, v4

    const/4 v4, -0x1

    invoke-static {v1, v2, v4, v12, v11}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    and-int/lit16 v1, v3, 0x100

    if-nez v1, :cond_7

    goto/16 :goto_8

    :cond_6
    and-int/lit16 v1, v3, 0x200

    if-nez v1, :cond_7

    goto/16 :goto_8

    :cond_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    move/from16 v4, v19

    goto :goto_5

    :cond_8
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    move/from16 v19, v4

    const-string v1, ", userId "

    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    const-wide/32 v11, 0x5265c00

    sub-long v11, v6, v11

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v13, 0x0

    move-wide/from16 v25, v13

    const/4 v4, 0x0

    const/4 v13, 0x0

    :cond_9
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v20

    cmp-long v15, v20, v11

    if-ltz v15, :cond_9

    :cond_a
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v20

    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v22

    add-long v25, v22, v20

    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    const/16 v15, 0x29

    if-eq v14, v15, :cond_c

    const/16 v15, 0x2a

    if-eq v14, v15, :cond_b

    goto :goto_6

    :cond_b
    const/4 v4, 0x1

    goto :goto_6

    :cond_c
    const/4 v13, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    const-string v11, "RecentLocationApps"

    if-nez v4, :cond_e

    if-nez v13, :cond_e

    const/4 v1, 0x2

    invoke-static {v11, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hadn\'t used location within the time interval."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    :try_start_0
    iget-object v10, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v10, v2, v12, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-nez v10, :cond_f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Null application info retrieved for package "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_f
    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v13, v0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v13, v10, v4}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    iget-object v13, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v13, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v10, v12}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    new-instance v13, Lcom/android/settingslib/location/RecentLocationApps$Request;

    move-object/from16 v20, v13

    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v24, v10

    invoke-direct/range {v20 .. v26}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v13

    goto :goto_7

    :catch_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "package name not found for "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_7
    if-eqz v3, :cond_11

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    move/from16 v4, v19

    goto/16 :goto_1

    :cond_12
    new-instance v0, Lcom/android/settingslib/location/RecentLocationApps$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v5
.end method
