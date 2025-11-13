.class public final Lcom/android/settingslib/applications/RecentAppOpsAccess;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field static final LOCATION_OPS:[I


# instance fields
.field public final mClock:Ljava/time/Clock;

.field public final mContext:Landroid/content/Context;

.field public final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field public final mOps:[I

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->LOCATION_OPS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/time/Clock;[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mOps:[I

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    iput-object p2, p0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mClock:Ljava/time/Clock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 1

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settingslib/applications/RecentAppOpsAccess;-><init>(Landroid/content/Context;Ljava/time/Clock;[I)V

    return-void
.end method

.method public static createForLocation(Landroid/content/Context;)Lcom/android/settingslib/applications/RecentAppOpsAccess;
    .locals 2

    new-instance v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;

    sget-object v1, Lcom/android/settingslib/applications/RecentAppOpsAccess;->LOCATION_OPS:[I

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/applications/RecentAppOpsAccess;-><init>(Landroid/content/Context;[I)V

    return-object v0
.end method


# virtual methods
.method public getAppList(Z)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iget-object v2, v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mOps:[I

    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mContext:Landroid/content/Context;

    const-class v9, Landroid/os/UserManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v9

    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v4, :cond_10

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v14

    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-static {}, Landroid/multiuser/Flags;->handleInterleavedSettingsForPrivateSpace()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v8, v15}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v8, v15}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserProperties;->getShowInQuietMode()I

    move-result v3

    move-object/from16 v16, v1

    const/4 v1, 0x1

    if-ne v3, v1, :cond_2

    goto :goto_2

    :cond_1
    move-object/from16 v16, v1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v10, v15, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object/from16 v16, v1

    :goto_3
    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_4
    move-object/from16 v17, v2

    move/from16 v19, v4

    move-object/from16 v20, v8

    goto/16 :goto_9

    :cond_5
    const/16 v1, 0x1395

    if-ne v14, v1, :cond_6

    const-string v1, "com.sec.location.nsflp2"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    if-nez p1, :cond_a

    array-length v1, v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_a

    aget v17, v2, v3

    move/from16 v18, v1

    invoke-static/range {v17 .. v17}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-object/from16 v17, v2

    move/from16 v19, v4

    move-object/from16 v20, v8

    goto :goto_6

    :cond_7
    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v13, v15}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    move/from16 v19, v4

    iget-object v4, v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mContext:Landroid/content/Context;

    move-object/from16 v20, v8

    const/4 v8, -0x1

    invoke-static {v4, v1, v8, v14, v13}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    and-int/lit16 v1, v2, 0x100

    if-nez v1, :cond_9

    goto/16 :goto_9

    :cond_8
    and-int/lit16 v1, v2, 0x200

    if-nez v1, :cond_9

    goto/16 :goto_9

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v17

    move/from16 v1, v18

    move/from16 v4, v19

    move-object/from16 v8, v20

    goto :goto_5

    :cond_a
    move-object/from16 v17, v2

    move/from16 v19, v4

    move-object/from16 v20, v8

    iget-object v1, v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mContext:Landroid/content/Context;

    invoke-static {v1, v13}, Landroid/permission/PermissionManager;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, ", userId "

    const-string v2, "RecentAppOpsAccess"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    const-wide/32 v13, 0x5265c00

    sub-long v13, v6, v13

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v21, 0x0

    :goto_7
    move-wide/from16 v26, v21

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    const/16 v15, 0xd

    invoke-virtual {v8, v15}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v21

    cmp-long v8, v21, v26

    if-lez v8, :cond_b

    goto :goto_7

    :cond_c
    cmp-long v4, v26, v13

    const/4 v8, 0x0

    if-gez v4, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    :try_start_0
    iget-object v12, v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x80

    invoke-virtual {v12, v3, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    if-nez v12, :cond_e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Null application info retrieved for package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v14, v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v14, v12, v4}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    iget-object v14, v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v14, v0, Lcom/android/settingslib/applications/RecentAppOpsAccess;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v12, v13}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    new-instance v14, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;

    move-object/from16 v21, v14

    move-object/from16 v22, v3

    move-object/from16 v23, v13

    move-object/from16 v25, v12

    invoke-direct/range {v21 .. v27}, Lcom/android/settingslib/applications/RecentAppOpsAccess$Access;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v14

    goto :goto_8

    :catch_0
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "package name not found for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    if-eqz v8, :cond_f

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v4, v19

    move-object/from16 v8, v20

    goto/16 :goto_1

    :cond_10
    return-object v5
.end method
