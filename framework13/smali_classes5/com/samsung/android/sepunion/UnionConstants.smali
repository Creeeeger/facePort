.class public final Lcom/samsung/android/sepunion/UnionConstants;
.super Ljava/lang/Object;
.source "UnionConstants.java"


# static fields
.field public static final blacklist BUNDLE_KEY_COMPONENT:Ljava/lang/String; = "component"

.field public static final blacklist BUNDLE_KEY_COMPONENT_LIST:Ljava/lang/String; = "component_list"

.field public static final blacklist BUNDLE_KEY_PACKAGE_LIST:Ljava/lang/String; = "package_list"

.field public static final blacklist BUNDLE_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final blacklist BUNDLE_KEY_PACKAGE_STATE:Ljava/lang/String; = "package_state"

.field public static final blacklist BUNDLE_KEY_RESUMED:Ljava/lang/String; = "is_resumed"

.field public static final blacklist CUSTOM_EVENT_ACTIVITY_STATE:Ljava/lang/String; = "monitor_activity_state"

.field public static final blacklist CUSTOM_EVENT_CALL_STATE:Ljava/lang/String; = "monitor_call_state"

.field public static final blacklist CUSTOM_EVENT_PACKAGE_STATE:Ljava/lang/String; = "monitor_package_state"

.field public static final blacklist EXTRA_KEY_ACTION_ORIGIN:Ljava/lang/String; = "action_origin"

.field public static final blacklist EXTRA_KEY_CALL_STATE:Ljava/lang/String; = "call_state"

.field public static final blacklist EXTRA_KEY_COMPONENT_NAME:Ljava/lang/String; = "component"

.field public static final blacklist EXTRA_KEY_IS_RESUMED:Ljava/lang/String; = "is_resumed"

.field public static final blacklist EXTRA_KEY_NOTIFY_FOR_DESCENDANTS:Ljava/lang/String; = "notify_for_descendants"

.field public static final blacklist EXTRA_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final blacklist EXTRA_KEY_PACKAGE_STATE:Ljava/lang/String; = "package_state"

.field public static final blacklist EXTRA_KEY_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final blacklist EXTRA_KEY_URI:Ljava/lang/String; = "uri"

.field public static final blacklist FLAG_CHECK_CONDITION_NONE:I = 0x0

.field public static final blacklist FLAG_CHECK_CONDITION_PACKAGE_NAME:I = 0x1

.field public static final blacklist FLAG_CHECK_CONDITION_PERMISSION:I = 0x2

.field public static final blacklist LOG_TAG_COVER:Ljava/lang/String; = "CoverManager_"

.field public static final blacklist MASK_FLAG_CHECK_CONDITION:I = 0x3

.field public static final blacklist PACKAGE_STATE_ADDED:Ljava/lang/String; = "package_added"

.field public static final blacklist PACKAGE_STATE_MODIFIED:Ljava/lang/String; = "package_modified"

.field public static final blacklist PACKAGE_STATE_REMOVED:Ljava/lang/String; = "package_removed"

.field public static final blacklist PATH_LOG_FILE:Ljava/lang/String; = "/data/log/sepunion/"

.field public static final blacklist SERVICE_COVER:Ljava/lang/String; = "cover"

.field public static final blacklist SERVICE_DEVICE_INFO:Ljava/lang/String; = "semeventdelegator"

.field public static final blacklist SERVICE_DUMP:Ljava/lang/String; = "semcustomdump"

.field public static final blacklist SERVICE_ENGMODE:Ljava/lang/String; = "EngmodeService"

.field public static final blacklist SERVICE_EXCLUSIVE_TASK:Ljava/lang/String; = "exclusivetask"

.field public static final blacklist SERVICE_FRIENDS:Ljava/lang/String; = "friends"

.field public static final blacklist SERVICE_FW_BR_RECEIVER_AGENT:Ljava/lang/String; = "brreceiveragent"

.field public static final blacklist SERVICE_GALAXY_REGISTRY:Ljava/lang/String; = "galaxyregistry"

.field public static final blacklist SERVICE_GOOD_CATCH:Ljava/lang/String; = "goodcatch"

.field public static final blacklist SERVICE_HERMES:Ljava/lang/String; = "HermesService"

.field public static final blacklist SERVICE_ONE_HAND:Ljava/lang/String; = "onehand"

.field public static final blacklist SERVICE_PLUGIN:Ljava/lang/String; = "plugin"

.field public static final blacklist SERVICE_PRIVACY_DASHBOARD:Ljava/lang/String; = "PrivacyDashboard"

.field public static final blacklist SERVICE_QRNG:Ljava/lang/String; = "QRNGService"

.field public static final blacklist SERVICE_SHORTCUT:Ljava/lang/String; = "execute"

.field public static final blacklist SERVICE_START_AUTO:I = 0x0

.field public static final blacklist SERVICE_START_MANUAL:I = 0x1

.field public static final blacklist SERVICE_TIPS:Ljava/lang/String; = "tips"

.field public static final blacklist TYPE_ALL:I = 0x0

.field public static final blacklist TYPE_CUSTOM_EVENT:I = 0x3

.field public static final blacklist TYPE_INTENT_ACTION:I = 0x2

.field public static final blacklist TYPE_URI:I = 0x1

.field public static final blacklist sClassPathForManager:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist sClassPathForService:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist sServiceStartType:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 17

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    .line 37
    const-string/jumbo v1, "semeventdelegator"

    const-string v2, "com.samsung.android.sepunion.SemEventDelegationManager"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v2, "plugin"

    const-string v3, "com.samsung.android.sepunion.SemPluginManager"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v3, "execute"

    const-string v4, "com.samsung.android.app.SemExecutableManager"

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v4, "friends"

    const-string v5, "com.samsung.android.sepunion.FriendsManager"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_EXCLUSIVE_TASK"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "exclusivetask"

    if-eqz v5, :cond_0

    .line 45
    const-string v5, "com.samsung.android.sepunion.SemExclusiveTaskManager"

    invoke-virtual {v0, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    const-string v5, "onehand"

    const-string v8, "com.samsung.android.sepunion.OneHandServiceManager"

    invoke-virtual {v0, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v8, "galaxyregistry"

    const-string v9, "com.samsung.android.sepunion.GalaxyRegistryServiceManager"

    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v9, "brreceiveragent"

    const-string v10, "com.samsung.android.sepunion.BRReceiverAgentServiceManager"

    invoke-virtual {v0, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v10, "semcustomdump"

    const-string v11, "com.samsung.android.sepunion.SemCustomDumpManager"

    invoke-virtual {v0, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v10, "HermesService"

    const-string v11, "com.samsung.android.service.HermesService.HermesServiceManager"

    invoke-virtual {v0, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v11, "tips"

    const-string v12, "com.samsung.android.sepunion.TipsManager"

    invoke-virtual {v0, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v12, "goodcatch"

    const-string v13, "com.samsung.android.sepunion.SemGoodCatchManager"

    invoke-virtual {v0, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    .line 71
    const-string v13, "com.android.server.sepunion.SemDeviceInfoManagerService"

    invoke-virtual {v0, v1, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v13, "com.android.server.sepunion.SemPluginManagerService"

    invoke-virtual {v0, v2, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v13, "com.android.server.sepunion.SemShortcutManagerService"

    invoke-virtual {v0, v3, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v13, "com.android.server.sepunion.FriendsManagerService"

    invoke-virtual {v0, v4, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 79
    const-string v13, "com.android.server.sepunion.SemExclusiveTaskManagerService"

    invoke-virtual {v0, v7, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    const-string v13, "com.android.server.sepunion.OneHandService"

    invoke-virtual {v0, v5, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v13, "com.android.server.sepunion.GalaxyRegistryService"

    invoke-virtual {v0, v8, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v13, "com.android.server.sepunion.BRReceiverAgentService"

    invoke-virtual {v0, v9, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v13, "com.android.server.HermesService"

    invoke-virtual {v0, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v13, "com.android.server.sepunion.TipsManagerService"

    invoke-virtual {v0, v11, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v13, "EngmodeService"

    const-string v14, "com.android.server.sepunion.EngmodeService"

    invoke-virtual {v0, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v14, "com.android.server.sepunion.SemGoodCatchService"

    invoke-virtual {v0, v12, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v14, "PrivacyDashboard"

    const-string v15, "com.android.server.sepunion.SemPrivacyDashboardService"

    invoke-virtual {v0, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    .line 116
    const/4 v15, 0x0

    move-object/from16 v16, v14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v1, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_2
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
