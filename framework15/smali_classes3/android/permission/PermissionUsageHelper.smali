.class public Landroid/permission/PermissionUsageHelper;
.super Ljava/lang/Object;
.source "PermissionUsageHelper.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/app/AppOpsManager$OnOpStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionUsageHelper$AccessChainLink;,
        Landroid/permission/PermissionUsageHelper$OpUsage;
    }
.end annotation


# static fields
.field private static final blacklist CAMERA_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_RECENT_TIME_MS:J = 0x3a98L

.field private static final blacklist DEFAULT_RUNNING_TIME_MS:J = 0x1388L

.field private static final blacklist LOCATION_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist MIC_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PROPERTY_CAMERA_MIC_ICONS_ENABLED:Ljava/lang/String; = "camera_mic_icons_enabled"

.field private static final blacklist PROPERTY_LOCATION_INDICATORS_ENABLED:Ljava/lang/String; = "location_indicators_enabled"

.field private static final blacklist RECENT_ACCESS_TIME_MS:Ljava/lang/String; = "recent_access_time_ms"

.field private static final blacklist RUNNING_ACCESS_TIME_MS:Ljava/lang/String; = "running_access_time_ms"

.field private static final blacklist SYSTEM_PKG:Ljava/lang/String; = "android"


# instance fields
.field private blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mAttributionChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionUsageHelper$AccessChainLink;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPkgManager:Landroid/content/pm/PackageManager;

.field private blacklist mUserContexts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Landroid/permission/PermissionUsageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "android:coarse_location"

    const-string v1, "android:fine_location"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    const-string v0, "android:receive_ambient_trigger_audio"

    const-string v1, "android:record_audio"

    const-string v2, "android:phone_call_microphone"

    invoke-static {v2, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    const-string v0, "android:phone_call_camera"

    const-string v1, "android:camera"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mPkgManager:Landroid/content/pm/PackageManager;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android:camera"

    const-string v1, "android:record_audio"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    const/16 v1, 0x1a

    const/16 v2, 0x1b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    return-void
.end method

.method private blacklist addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 8

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v7, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/permission/PermissionUsageHelper$AccessChainLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v3}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v3}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getGroupForOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "android:camera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "android:phone_call_camera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "android:record_audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "android:receive_ambient_trigger_audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "android:phone_call_microphone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "android:fine_location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "android:coarse_location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown app op: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "android.permission-group.LOCATION"

    return-object v0

    :pswitch_1
    return-object p0

    :pswitch_2
    const-string v0, "android.permission-group.CAMERA"

    return-object v0

    :pswitch_3
    const-string v0, "android.permission-group.MICROPHONE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x639fe5c6 -> :sswitch_6
        -0xc86dd31 -> :sswitch_5
        0x8da560f -> :sswitch_4
        0x268c0901 -> :sswitch_3
        0x47019993 -> :sswitch_2
        0x52e1ba8a -> :sswitch_1
        0x5b14ae90 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getOpUsagesByDevice(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/app/AppOpsManager;->getPackagesForOps([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "default:0"

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/permission/PermissionUsageHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "device_aware_permission_apis_enabled flag not enabled when deviceId is not default"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AppOpsManager;->getPackagesForOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Landroid/permission/PermissionUsageHelper;->getRecentThreshold(Ljava/lang/Long;)J

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Landroid/permission/PermissionUsageHelper;->getRunningThreshold(Ljava/lang/Long;)J

    move-result-wide v8

    const/16 v10, 0xd

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_c

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v25

    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v27, v0

    move/from16 v0, v16

    :goto_2
    if-ge v0, v15, :cond_b

    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getOpStr()Ljava/lang/String;

    move-result-object v37

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v16, 0x0

    move/from16 v38, v12

    move/from16 v12, v16

    :goto_3
    if-ge v12, v3, :cond_a

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v39, v2

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    nop

    move/from16 v40, v3

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v3, v10}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v16

    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_2

    move-wide/from16 v16, v4

    move-wide/from16 v41, v16

    goto :goto_4

    :cond_2
    move-wide/from16 v41, v16

    :goto_4
    cmp-long v16, v41, v6

    if-gez v16, :cond_3

    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v16

    if-nez v16, :cond_3

    move-object/from16 v29, v1

    move-wide/from16 v18, v4

    move-wide/from16 v22, v6

    move/from16 v31, v15

    goto/16 :goto_8

    :cond_3
    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v16

    if-nez v16, :cond_5

    cmp-long v16, v41, v8

    if-ltz v16, :cond_4

    goto :goto_5

    :cond_4
    const/16 v16, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    const/16 v16, 0x1

    :goto_6
    move/from16 v35, v16

    const/16 v16, 0x0

    invoke-virtual {v3, v10}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v43

    if-eqz v43, :cond_6

    invoke-virtual/range {v43 .. v43}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_6

    new-instance v17, Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual/range {v43 .. v43}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v43 .. v43}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v43 .. v43}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v32

    const/16 v36, 0x0

    move-object/from16 v28, v17

    move-object/from16 v31, v37

    move-wide/from16 v33, v41

    invoke-direct/range {v28 .. v36}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    move-object/from16 v16, v17

    move-object/from16 v28, v16

    goto :goto_7

    :cond_6
    move-object/from16 v28, v16

    :goto_7
    move-object/from16 v29, v1

    invoke-static/range {v37 .. v37}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v30, Landroid/permission/PermissionUsageHelper$OpUsage;

    move/from16 v31, v15

    move-object/from16 v15, v30

    move-object/from16 v16, v26

    move-object/from16 v17, v2

    move-object/from16 v18, v37

    move/from16 v19, v24

    move-wide/from16 v20, v41

    move/from16 v22, v35

    move-object/from16 v23, v28

    invoke-direct/range {v15 .. v23}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    invoke-virtual {v15}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    new-instance v16, Landroid/util/ArrayMap;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v18, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v18

    invoke-virtual {v3, v2, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v18, v4

    move-wide/from16 v22, v6

    goto :goto_8

    :cond_7
    move-object/from16 v16, v3

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    invoke-interface {v3, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v18, v4

    move-wide/from16 v22, v6

    goto :goto_8

    :cond_8
    move-wide/from16 v18, v4

    iget-wide v4, v15, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v1

    move-object/from16 v1, v20

    check-cast v1, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-wide/from16 v22, v6

    iget-wide v6, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_9

    invoke-interface {v3, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v18

    move-wide/from16 v6, v22

    move-object/from16 v1, v29

    move/from16 v15, v31

    move-object/from16 v2, v39

    move/from16 v3, v40

    goto/16 :goto_3

    :cond_a
    move-object/from16 v29, v1

    move-object/from16 v39, v2

    move/from16 v40, v3

    move-wide/from16 v18, v4

    move-wide/from16 v22, v6

    move/from16 v31, v15

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v12, v38

    goto/16 :goto_2

    :cond_b
    move-wide/from16 v18, v4

    move-wide/from16 v22, v6

    move/from16 v38, v12

    move/from16 v31, v15

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, v27

    goto/16 :goto_1

    :cond_c
    move-object/from16 v27, v0

    move-wide/from16 v18, v4

    move-wide/from16 v22, v6

    move/from16 v38, v12

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getRecentThreshold(Ljava/lang/Long;)J
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "recent_access_time_ms"

    const-wide/16 v3, 0x3a98

    const-string/jumbo v5, "privacy"

    invoke-static {v5, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist getRunningThreshold(Ljava/lang/Long;)J
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "running_access_time_ms"

    const-wide/16 v3, 0x1388

    const-string/jumbo v5, "privacy"

    invoke-static {v5, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/permission/PermissionUsageHelper;->isSubattributionSupported(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-wide v4, 0x80001000L    # 1.060999919E-314

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v8, v6, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v8}, Landroid/content/pm/Attribution;->getLabel()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/pm/Attribution;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    goto :goto_1

    :catch_0
    move-exception v9

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :catch_1
    move-exception v2

    :goto_2
    return-object v0
.end method

.method private blacklist getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v4, v0

    if-eqz v3, :cond_1e

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v10, v4

    goto/16 :goto_12

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v6, v0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    const/4 v0, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v11, :cond_1

    iget-object v11, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_8

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$OpUsage;

    if-nez v10, :cond_3

    move-object/from16 v16, v4

    goto :goto_3

    :cond_3
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v12, :cond_4

    const-string v12, "android.permission-group.MICROPHONE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v14, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v14}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v13, :cond_5

    iget-wide v14, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    move-object/from16 v16, v4

    iget-wide v3, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v3, v14, v3

    if-lez v3, :cond_7

    goto :goto_2

    :cond_5
    move-object/from16 v16, v4

    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    move-object/from16 v16, v4

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    goto :goto_1

    :cond_8
    move-object/from16 v16, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_4
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v10, 0x0

    if-ge v3, v0, :cond_13

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    if-nez v12, :cond_9

    move-object/from16 v10, v16

    goto/16 :goto_a

    :cond_9
    const/4 v13, 0x0

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v14

    :goto_5
    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v15, :cond_f

    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v15}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v15}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-object v4, v0

    goto :goto_6

    :cond_a
    iget-object v15, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v4, v15, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object v0, v15

    add-int/lit8 v14, v14, 0x1

    move-object v4, v0

    :goto_6
    if-eqz v4, :cond_e

    if-eq v13, v14, :cond_e

    invoke-virtual {v4}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    if-ne v0, v15, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v4}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v15, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v4, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    nop

    :try_start_0
    invoke-virtual {v4}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v15, v4, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v15, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    invoke-virtual {v15, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v18, v17

    move-object/from16 v10, v18

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    goto :goto_7

    :catch_0
    move-exception v0

    :cond_d
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object v0, v4

    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_e
    :goto_8
    move-object v0, v4

    :cond_f
    const-string v4, "android.permission-group.MICROPHONE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    nop

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    invoke-direct {v1, v12}, Landroid/permission/PermissionUsageHelper;->formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_9
    move-object/from16 v10, v16

    invoke-virtual {v10, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_11
    move-object/from16 v10, v16

    goto :goto_a

    :cond_12
    move-object/from16 v10, v16

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v16, v10

    goto/16 :goto_4

    :cond_13
    move-object/from16 v10, v16

    iget-object v3, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v3

    const/4 v0, 0x0

    move v4, v0

    :goto_b
    :try_start_1
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v4, v0, :cond_1b

    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v11, v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1a

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v13}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result v12

    if-eqz v12, :cond_19

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    iget-object v12, v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v12, v12, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    invoke-static {v12}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, "android.permission-group.MICROPHONE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_14
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    iget-object v14, v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v14}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_c

    :cond_15
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v12, v13

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v14, v13

    move v13, v0

    :goto_d
    if-lez v13, :cond_16

    iget-object v0, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object v14, v0

    goto :goto_d

    :cond_16
    const/4 v15, 0x0

    iget-object v0, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v2, v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v2, v2, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_17

    :try_start_2
    iget-object v0, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, v14, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v2, v2, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v15, v16

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    :goto_e
    :try_start_4
    iget-object v0, v12, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v10, v0, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    goto :goto_f

    :cond_19
    const/4 v1, 0x0

    goto :goto_f

    :cond_1a
    const/4 v1, 0x0

    :goto_f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_b

    :cond_1b
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/permission/PermissionUsageHelper$OpUsage;

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1c
    const/4 v3, 0x0

    :goto_11
    goto :goto_10

    :cond_1d
    return-object v10

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_1e
    move-object v10, v4

    :goto_12
    return-object v10
.end method

.method private blacklist getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private blacklist isLocationProvider(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isSubattributionSupported(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/permission/PermissionUsageHelper;->isLocationProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    nop

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    nop

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->areAttributionsUserVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private static blacklist isSupportSamsungLocationChip()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$addLinkToChainIfNotPresentLocked$0(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist shouldShowIndicators()Z
    .locals 3

    const-string v0, "camera_mic_icons_enabled"

    const/4 v1, 0x1

    const-string/jumbo v2, "privacy"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist shouldShowLocationIndicator()Z
    .locals 3

    const-string/jumbo v0, "privacy"

    const-string/jumbo v1, "location_indicators_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/permission/PermissionUsageHelper;->isSupportSamsungLocationChip()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private blacklist shouldShowPackage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/permission/PermissionManager;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-direct {p0, v3, v4}, Landroid/permission/PermissionUsageHelper;->getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist getOpUsageDataByDevice(ZLjava/lang/String;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/permission/PermissionUsageHelper;->shouldShowIndicators()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Landroid/permission/PermissionUsageHelper;->shouldShowLocationIndicator()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    move-object/from16 v3, p2

    invoke-direct {v0, v2, v3}, Landroid/permission/PermissionUsageHelper;->getOpUsagesByDevice(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v14, v4

    iget-object v4, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v5, Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/media/AudioManager;

    const-string v13, "android:phone_call_camera"

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v12, "android:phone_call_microphone"

    const/4 v5, 0x1

    if-nez v4, :cond_4

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v5

    :goto_1
    move/from16 v17, v4

    if-eqz v17, :cond_6

    const-string v4, "android.permission-group.MICROPHONE"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    iget-object v6, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    nop

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v8, v8, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_5

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v4

    const/4 v4, 0x0

    move v10, v4

    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_a

    const/4 v4, 0x0

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    nop

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v5, v6}, Landroid/permission/PermissionUsageHelper;->getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v6, v11}, Landroid/permission/PermissionUsageHelper;->updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v4, 0x1

    const-string v5, "android.permission-group.MICROPHONE"

    move/from16 v18, v4

    move-object/from16 v19, v5

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v4, 0x1

    const-string v5, "android.permission-group.CAMERA"

    move/from16 v18, v4

    move-object/from16 v19, v5

    goto :goto_4

    :cond_8
    move/from16 v18, v4

    move-object/from16 v19, v5

    :goto_4
    const/4 v4, 0x0

    move v7, v4

    :goto_5
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v7, v4, :cond_9

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v4, v8, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v11, v4, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iget-object v5, v8, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Ljava/lang/String;

    new-instance v6, Landroid/permission/PermissionGroupUsage;

    iget-object v5, v8, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget v4, v8, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    move-object/from16 v21, v2

    iget-wide v2, v8, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    iget-boolean v0, v8, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    move-object/from16 v22, v12

    iget-object v12, v8, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/CharSequence;

    move/from16 v24, v4

    move-object v4, v6

    move-object/from16 v25, v6

    move/from16 v6, v24

    move/from16 v24, v7

    move-object/from16 v26, v8

    move-wide v7, v2

    move-object v2, v9

    move-object/from16 v9, v19

    move v3, v10

    move v10, v0

    move-object v0, v11

    move/from16 v11, v18

    move-object/from16 v27, v13

    move-object/from16 v13, v20

    move-object/from16 v28, v14

    move-object/from16 v14, v23

    move-object/from16 v23, v15

    move-object/from16 v15, p2

    invoke-direct/range {v4 .. v15}, Landroid/permission/PermissionGroupUsage;-><init>(Ljava/lang/String;IJLjava/lang/String;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    move-object/from16 v4, v25

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v24, 0x1

    move-object v11, v0

    move-object v9, v2

    move v10, v3

    move-object/from16 v2, v21

    move-object/from16 v12, v22

    move-object/from16 v15, v23

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    goto :goto_5

    :cond_9
    move-object/from16 v21, v2

    move/from16 v24, v7

    move-object v2, v9

    move v3, v10

    move-object v0, v11

    move-object/from16 v22, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v23, v15

    add-int/lit8 v10, v3, 0x1

    move-object/from16 v3, p2

    move-object/from16 v2, v21

    move-object/from16 v0, p0

    goto/16 :goto_3

    :cond_a
    return-object v1
.end method

.method public blacklist getOpUsageDataForAllDevices(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDevice;

    invoke-virtual {v4}, Landroid/companion/virtual/VirtualDevice;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "default:0"

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    nop

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Landroid/permission/PermissionUsageHelper;->getOpUsageDataByDevice(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public blacklist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 15

    move-object v1, p0

    if-eqz p5, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v5, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/permission/PermissionUsageHelper$AccessChainLink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    :try_start_1
    invoke-virtual {v9, v10, v12, v13, v11}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->packageAndOpEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    iget-object v4, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    nop

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public whitelist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 11

    if-eqz p7, :cond_2

    const/4 v0, -0x1

    move/from16 v8, p9

    if-eq v8, v0, :cond_1

    if-eqz p8, :cond_1

    and-int/lit8 v0, p8, 0x8

    if-nez v0, :cond_0

    move-object v9, p0

    goto :goto_0

    :cond_0
    move-object v9, p0

    iget-object v10, v9, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v10

    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move v4, p2

    move-object v5, p4

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Landroid/permission/PermissionUsageHelper;->addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v9, p0

    goto :goto_0

    :cond_2
    move-object v9, p0

    move/from16 v8, p9

    :goto_0
    return-void
.end method

.method public blacklist tearDown()V
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    return-void
.end method
