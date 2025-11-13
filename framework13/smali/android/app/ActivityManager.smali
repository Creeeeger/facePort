.class public Landroid/app/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$ProcessResource;,
        Landroid/app/ActivityManager$PendingIntentInfo;,
        Landroid/app/ActivityManager$AppTask;,
        Landroid/app/ActivityManager$StopUserOnSwitch;,
        Landroid/app/ActivityManager$OnUidImportanceListener;,
        Landroid/app/ActivityManager$RunningAppProcessInfo;,
        Landroid/app/ActivityManager$ProcessErrorStateInfo;,
        Landroid/app/ActivityManager$MemoryInfo;,
        Landroid/app/ActivityManager$RunningServiceInfo;,
        Landroid/app/ActivityManager$MoveTaskFlags;,
        Landroid/app/ActivityManager$RunningTaskInfo;,
        Landroid/app/ActivityManager$RecentTaskInfo;,
        Landroid/app/ActivityManager$TaskDescription;,
        Landroid/app/ActivityManager$RestrictionLevel;,
        Landroid/app/ActivityManager$SemActivityControllerListener;,
        Landroid/app/ActivityManager$ActivityController;,
        Landroid/app/ActivityManager$SemProcessListener;,
        Landroid/app/ActivityManager$ProcessObserver;,
        Landroid/app/ActivityManager$ProcessCapability;,
        Landroid/app/ActivityManager$ProcessState;,
        Landroid/app/ActivityManager$UidObserver;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_REPORT_HEAP_LIMIT:Ljava/lang/String; = "android.app.action.REPORT_HEAP_LIMIT"

.field public static final blacklist ADD_RECENT_PAIRED_TASKS:I = 0x40

.field public static final greylist-max-o APP_START_MODE_DELAYED:I = 0x1

.field public static final greylist-max-o APP_START_MODE_DELAYED_RIGID:I = 0x2

.field public static final greylist-max-o APP_START_MODE_DISABLED:I = 0x3

.field public static final greylist-max-o APP_START_MODE_NORMAL:I = 0x0

.field public static final greylist-max-o ASSIST_CONTEXT_AUTOFILL:I = 0x2

.field public static final greylist-max-o ASSIST_CONTEXT_BASIC:I = 0x0

.field public static final blacklist ASSIST_CONTEXT_CONTENT:I = 0x3

.field public static final greylist-max-o ASSIST_CONTEXT_FULL:I = 0x1

.field public static final greylist-max-o BROADCAST_FAILED_USER_STOPPED:I = -0x2

.field public static final greylist-max-o BROADCAST_STICKY_CANT_HAVE_PERMISSION:I = -0x1

.field public static final greylist-max-o BROADCAST_SUCCESS:I = 0x0

.field public static final greylist-max-o COMPAT_MODE_ALWAYS:I = -0x1

.field public static final greylist-max-o COMPAT_MODE_DISABLED:I = 0x0

.field public static final greylist-max-o COMPAT_MODE_ENABLED:I = 0x1

.field public static final greylist-max-o COMPAT_MODE_NEVER:I = -0x2

.field public static final greylist-max-o COMPAT_MODE_TOGGLE:I = 0x2

.field public static final greylist-max-o COMPAT_MODE_UNKNOWN:I = -0x3

.field private static final greylist-max-o DEVELOPMENT_FORCE_LOW_RAM:Z

.field public static final blacklist DROP_CLOSE_SYSTEM_DIALOGS:J = 0xa6929b8L

.field private static final greylist-max-o FIRST_START_FATAL_ERROR_CODE:I = -0x64

.field private static final greylist-max-o FIRST_START_NON_FATAL_ERROR_CODE:I = 0x64

.field private static final greylist-max-o FIRST_START_SUCCESS_CODE:I = 0x0

.field public static final greylist-max-o FLAG_AND_LOCKED:I = 0x2

.field public static final greylist-max-o FLAG_AND_UNLOCKED:I = 0x4

.field public static final greylist-max-o FLAG_AND_UNLOCKING_OR_UNLOCKED:I = 0x8

.field public static final greylist-max-o FLAG_OR_STOPPED:I = 0x1

.field private static final greylist IActivityManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INSTR_FLAG_ALWAYS_CHECK_SIGNATURE:I = 0x10

.field public static final blacklist INSTR_FLAG_DISABLE_HIDDEN_API_CHECKS:I = 0x1

.field public static final blacklist INSTR_FLAG_DISABLE_ISOLATED_STORAGE:I = 0x2

.field public static final blacklist INSTR_FLAG_DISABLE_TEST_API_CHECKS:I = 0x4

.field public static final blacklist INSTR_FLAG_INSTRUMENT_SDK_SANDBOX:I = 0x20

.field public static final blacklist INSTR_FLAG_NO_RESTART:I = 0x8

.field public static final greylist INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final greylist-max-o INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final greylist-max-o INTENT_SENDER_BROADCAST:I = 0x1

.field public static final greylist-max-o INTENT_SENDER_FOREGROUND_SERVICE:I = 0x5

.field public static final greylist-max-o INTENT_SENDER_SERVICE:I = 0x4

.field public static final blacklist INTENT_SENDER_UNKNOWN:I = 0x0

.field private static final greylist-max-o LAST_START_FATAL_ERROR_CODE:I = -0x1

.field private static final greylist-max-o LAST_START_NON_FATAL_ERROR_CODE:I = 0xc7

.field private static final greylist-max-o LAST_START_SUCCESS_CODE:I = 0x63

.field public static final blacklist LOCK_DOWN_CLOSE_SYSTEM_DIALOGS:J = 0xa692aadL

.field public static final whitelist LOCK_TASK_MODE_LOCKED:I = 0x1

.field public static final whitelist LOCK_TASK_MODE_NONE:I = 0x0

.field public static final whitelist LOCK_TASK_MODE_PINNED:I = 0x2

.field public static final greylist-max-o MAX_PROCESS_STATE:I = 0x14

.field public static final whitelist META_HOME_ALTERNATE:Ljava/lang/String; = "android.app.home.alternate"

.field public static final greylist-max-o MIN_PROCESS_STATE:I = 0x0

.field public static final whitelist MOVE_TASK_NO_USER_ACTION:I = 0x2

.field public static final whitelist MOVE_TASK_WITH_HOME:I = 0x1

.field public static final blacklist PROCESS_CAPABILITY_ALL:I = 0xf

.field public static final blacklist PROCESS_CAPABILITY_ALL_EXPLICIT:I = 0x1

.field public static final blacklist PROCESS_CAPABILITY_ALL_IMPLICIT:I = 0x6

.field public static final blacklist PROCESS_CAPABILITY_FOREGROUND_CAMERA:I = 0x2

.field public static final blacklist PROCESS_CAPABILITY_FOREGROUND_LOCATION:I = 0x1

.field public static final blacklist PROCESS_CAPABILITY_FOREGROUND_MICROPHONE:I = 0x4

.field public static final blacklist PROCESS_CAPABILITY_NETWORK:I = 0x8

.field public static final blacklist PROCESS_CAPABILITY_NONE:I = 0x0

.field public static final blacklist PROCESS_RESOURCE_VIEW:I = 0x1

.field public static final greylist-max-o PROCESS_STATE_BACKUP:I = 0x9

.field public static final greylist-max-r PROCESS_STATE_BOUND_FOREGROUND_SERVICE:I = 0x5

.field public static final blacklist PROCESS_STATE_BOUND_TOP:I = 0x3

.field public static final greylist-max-r PROCESS_STATE_CACHED_ACTIVITY:I = 0x10

.field public static final greylist-max-o PROCESS_STATE_CACHED_ACTIVITY_CLIENT:I = 0x11

.field public static final greylist-max-o PROCESS_STATE_CACHED_EMPTY:I = 0x13

.field public static final greylist-max-o PROCESS_STATE_CACHED_RECENT:I = 0x12

.field public static final greylist-max-r PROCESS_STATE_FOREGROUND_SERVICE:I = 0x4

.field public static final greylist-max-o PROCESS_STATE_HEAVY_WEIGHT:I = 0xd

.field public static final greylist-max-r PROCESS_STATE_HOME:I = 0xe

.field public static final greylist-max-r PROCESS_STATE_IMPORTANT_BACKGROUND:I = 0x7

.field public static final greylist-max-o PROCESS_STATE_IMPORTANT_FOREGROUND:I = 0x6

.field public static final greylist-max-o PROCESS_STATE_LAST_ACTIVITY:I = 0xf

.field public static final greylist-max-o PROCESS_STATE_NONEXISTENT:I = 0x14

.field public static final greylist-max-o PROCESS_STATE_PERSISTENT:I = 0x0

.field public static final greylist-max-o PROCESS_STATE_PERSISTENT_UI:I = 0x1

.field public static final greylist-max-r PROCESS_STATE_RECEIVER:I = 0xb

.field public static final greylist-max-r PROCESS_STATE_SERVICE:I = 0xa

.field public static final greylist PROCESS_STATE_TOP:I = 0x2

.field public static final greylist-max-o PROCESS_STATE_TOP_SLEEPING:I = 0xc

.field public static final greylist-max-o PROCESS_STATE_TRANSIENT_BACKGROUND:I = 0x8

.field public static final greylist-max-o PROCESS_STATE_UNKNOWN:I = -0x1

.field public static final whitelist RECENT_IGNORE_UNAVAILABLE:I = 0x2

.field public static final blacklist RECENT_WITH_ALIAS_TARGET:I = 0x10

.field public static final whitelist RECENT_WITH_EXCLUDED:I = 0x1

.field public static final blacklist REMOVE_ALL_RECENT_TASKS:I = 0x8

.field public static final blacklist REMOVE_ALL_RECENT_TASKS_EXCEPT_TOP_TASK:I = 0x20

.field public static final blacklist REMOVE_TASK_EXCEPT_RECENTS:I = 0x10

.field public static final blacklist RESTRICTION_LEVEL_ADAPTIVE_BUCKET:I = 0x1e

.field public static final blacklist RESTRICTION_LEVEL_BACKGROUND_RESTRICTED:I = 0x32

.field public static final blacklist RESTRICTION_LEVEL_EXEMPTED:I = 0x14

.field public static final blacklist RESTRICTION_LEVEL_HIBERNATION:I = 0x3c

.field public static final blacklist RESTRICTION_LEVEL_MAX:I = 0x64

.field public static final blacklist RESTRICTION_LEVEL_RESTRICTED_BUCKET:I = 0x28

.field public static final blacklist RESTRICTION_LEVEL_UNKNOWN:I = 0x0

.field public static final blacklist RESTRICTION_LEVEL_UNRESTRICTED:I = 0xa

.field public static final whitelist SEM_REMOVE_TASK_IMMEDIATELY:I = 0x4

.field public static final greylist-max-o START_ABORTED:I = 0x66

.field public static final greylist-max-o START_ASSISTANT_HIDDEN_SESSION:I = -0x5a

.field public static final greylist-max-o START_ASSISTANT_NOT_ACTIVE_SESSION:I = -0x59

.field public static final blacklist START_BLOCKED_BY_MARs:I = -0xc8

.field public static final blacklist START_BLOCKED_BY_MDM:I = -0x65

.field public static final greylist-max-o START_CANCELED:I = -0x60

.field public static final blacklist START_CANCELLED_BY_TEMPERATURE:I = -0x66

.field public static final greylist-max-o START_CLASS_NOT_FOUND:I = -0x5c

.field public static final greylist-max-o START_DELIVERED_TO_TOP:I = 0x3

.field public static final greylist-max-o START_FLAG_DEBUG:I = 0x2

.field public static final greylist-max-o START_FLAG_NATIVE_DEBUGGING:I = 0x8

.field public static final greylist-max-o START_FLAG_ONLY_IF_NEEDED:I = 0x1

.field public static final greylist-max-o START_FLAG_TRACK_ALLOCATION:I = 0x4

.field public static final greylist-max-o START_FORWARD_AND_REQUEST_CONFLICT:I = -0x5d

.field public static final greylist-max-o START_INTENT_NOT_RESOLVED:I = -0x5b

.field public static final greylist-max-o START_NOT_ACTIVITY:I = -0x5f

.field public static final greylist-max-o START_NOT_CURRENT_USER_ACTIVITY:I = -0x62

.field public static final greylist-max-o START_NOT_VOICE_COMPATIBLE:I = -0x61

.field public static final greylist-max-o START_PERMISSION_DENIED:I = -0x5e

.field public static final greylist-max-o START_RETURN_INTENT_TO_CALLER:I = 0x1

.field public static final greylist-max-o START_RETURN_LOCK_TASK_MODE_VIOLATION:I = 0x65

.field public static final greylist-max-o START_SUCCESS:I = 0x0

.field public static final greylist-max-o START_SWITCHES_CANCELED:I = 0x64

.field public static final greylist-max-o START_TASK_TO_FRONT:I = 0x2

.field public static final greylist-max-o START_VOICE_HIDDEN_SESSION:I = -0x64

.field public static final greylist-max-o START_VOICE_NOT_ACTIVE_SESSION:I = -0x63

.field public static final blacklist STOP_USER_ON_SWITCH_DEFAULT:I = -0x1

.field public static final blacklist STOP_USER_ON_SWITCH_FALSE:I = 0x0

.field public static final blacklist STOP_USER_ON_SWITCH_TRUE:I = 0x1

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field public static final greylist-max-o UID_OBSERVER_ACTIVE:I = 0x8

.field public static final greylist-max-o UID_OBSERVER_CACHED:I = 0x10

.field public static final blacklist UID_OBSERVER_CAPABILITY:I = 0x20

.field public static final greylist-max-o UID_OBSERVER_GONE:I = 0x2

.field public static final greylist-max-o UID_OBSERVER_IDLE:I = 0x4

.field public static final greylist-max-o UID_OBSERVER_PROCSTATE:I = 0x1

.field public static final blacklist UID_OBSERVER_PROC_OOM_ADJ:I = 0x40

.field public static final greylist-max-o USER_OP_ERROR_IS_SYSTEM:I = -0x3

.field public static final greylist-max-o USER_OP_ERROR_RELATED_USERS_CANNOT_STOP:I = -0x4

.field public static final greylist-max-o USER_OP_IS_CURRENT:I = -0x2

.field public static final greylist-max-o USER_OP_SUCCESS:I = 0x0

.field public static final greylist-max-o USER_OP_UNKNOWN_USER:I = -0x1

.field private static volatile greylist-max-o sSystemReady:Z


# instance fields
.field private blacklist mActivityController:Landroid/app/ActivityManager$ActivityController;

.field private final blacklist mActivityControllerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/app/ActivityManager$SemActivityControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mAppTaskThumbnailSize:Landroid/graphics/Point;

.field private final greylist mContext:Landroid/content/Context;

.field final greylist-max-o mImportanceListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityManager$OnUidImportanceListener;",
            "Landroid/app/ActivityManager$UidObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/app/ActivityManager$SemProcessListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProcessObserverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/ActivityManager$SemProcessListener;",
            "Landroid/app/ActivityManager$ProcessObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityControllerListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityManager;->mActivityControllerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProcessListeners(Landroid/app/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityManager;->mProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTaskService()Landroid/app/IActivityTaskManager;
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 160
    const-string v0, "ActivityManager"

    sput-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    .line 1162
    nop

    .line 1163
    const-string v1, "debug.force_low_ram"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManager;->DEVELOPMENT_FORCE_LOW_RAM:Z

    .line 5208
    new-instance v0, Landroid/app/ActivityManager$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager;->IActivityManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method constructor greylist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager;->mActivityController:Landroid/app/ActivityManager$ActivityController;

    .line 881
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager;->mActivityControllerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 883
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager;->mProcessObserverMap:Ljava/util/Map;

    .line 884
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager;->mProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1102
    iput-object p1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 1103
    return-void
.end method

.method public static greylist-max-o broadcastStickyIntent(Landroid/content/Intent;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "userId"    # I

    .line 5132
    const/4 v0, -0x1

    invoke-static {p0, v0, p1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;II)V

    .line 5133
    return-void
.end method

.method public static greylist-max-o broadcastStickyIntent(Landroid/content/Intent;II)V
    .locals 18
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "appOp"    # I
    .param p2, "userId"    # I

    .line 5142
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v4, p0

    move/from16 v13, p1

    move/from16 v17, p2

    invoke-interface/range {v1 .. v17}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5147
    goto :goto_0

    .line 5146
    :catch_0
    move-exception v0

    .line 5148
    :goto_0
    return-void
.end method

.method public static greylist checkComponentPermission(Ljava/lang/String;IIZ)I
    .locals 4
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "owningUid"    # I
    .param p3, "exported"    # Z

    .line 4716
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4717
    .local v0, "appId":I
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4721
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 4722
    return v3

    .line 4726
    :cond_1
    if-ltz p2, :cond_2

    invoke-static {p1, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4727
    return v1

    .line 4730
    :cond_2
    if-nez p3, :cond_3

    .line 4737
    return v3

    .line 4739
    :cond_3
    if-nez p0, :cond_4

    .line 4740
    return v1

    .line 4743
    :cond_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 4744
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 4745
    :cond_5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_8

    .line 4747
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    nop

    .line 4748
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4750
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4751
    :cond_7
    return v1

    .line 4755
    :cond_8
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4756
    invoke-interface {v1, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4755
    return v1

    .line 4757
    :catch_0
    move-exception v1

    .line 4758
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4718
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_0
    return v1
.end method

.method public static greylist-max-o checkUidPermission(Ljava/lang/String;I)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 4765
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4766
    invoke-interface {v0, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4765
    return v0

    .line 4767
    :catch_0
    move-exception v0

    .line 4768
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5094
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 5095
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5096
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string/jumbo v5, "package"

    invoke-static {v1, p0, v5, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5097
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5098
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const-string v7, "-a"

    aput-object v7, v6, v4

    aput-object v5, v6, v2

    const/4 v5, 0x2

    aput-object p1, v6, v5

    const-string v7, "activity"

    invoke-static {v1, p0, v7, v6}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5100
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5101
    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "--local"

    aput-object v6, v3, v4

    const-string v6, "--package"

    aput-object v6, v3, v2

    aput-object p1, v3, v5

    const-string/jumbo v5, "meminfo"

    invoke-static {v1, p0, v5, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5102
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5103
    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v4

    const-string/jumbo v5, "procstats"

    invoke-static {v1, p0, v5, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5104
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5105
    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v4

    const-string/jumbo v5, "usagestats"

    invoke-static {v1, p0, v5, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5106
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5107
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v4

    const-string v3, "batterystats"

    invoke-static {v1, p0, v3, v2}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5108
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 5109
    return-void
.end method

.method private static greylist-max-o dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5219
    const-string v0, "DUMP OF SERVICE "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5220
    invoke-static {p2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5221
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 5222
    const-string v1, "  (Service not found)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5223
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 5224
    return-void

    .line 5226
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 5227
    instance-of v1, v0, Landroid/os/Binder;

    const-string v2, "Failure dumping service:"

    if-eqz v1, :cond_1

    .line 5231
    :try_start_0
    invoke-interface {v0, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5236
    :goto_0
    goto :goto_1

    .line 5232
    :catchall_0
    move-exception v1

    .line 5233
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5234
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 5235
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 5239
    :cond_1
    const/4 v1, 0x0

    .line 5241
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 5242
    new-instance v3, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v3}, Lcom/android/internal/os/TransferPipe;-><init>()V

    move-object v1, v3

    .line 5243
    const-string v3, "  "

    invoke-virtual {v1, v3}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 5244
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 5245
    const-wide/16 v3, 0x2710

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5252
    goto :goto_1

    .line 5246
    :catchall_1
    move-exception v3

    .line 5247
    .local v3, "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 5248
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5250
    :cond_2
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5251
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 5254
    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private greylist-max-o ensureAppTaskThumbnailSizeLocked()V
    .locals 2

    .line 2700
    iget-object v0, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 2702
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2705
    goto :goto_0

    .line 2703
    :catch_0
    move-exception v0

    .line 2704
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2707
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist getCapabilitiesSummary(I)Ljava/lang/String;
    .locals 2
    .param p0, "caps"    # I

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V

    .line 725
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getCurrentUser()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4820
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUserId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4821
    :catch_0
    move-exception v0

    .line 4822
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static greylist-max-o getLauncherLargeIconSizeInner(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 4592
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4593
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4594
    .local v1, "size":I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 4596
    .local v2, "sw":I
    const/16 v3, 0x258

    if-ge v2, v3, :cond_0

    .line 4598
    return v1

    .line 4601
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 4603
    .local v3, "density":I
    sparse-switch v3, :sswitch_data_0

    .line 4619
    int-to-float v4, v1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 4615
    :sswitch_0
    mul-int/lit16 v4, v1, 0x140

    mul-int/lit8 v4, v4, 0x2

    div-int/lit16 v4, v4, 0x1e0

    return v4

    .line 4613
    :sswitch_1
    mul-int/lit16 v4, v1, 0x1e0

    div-int/lit16 v4, v4, 0x140

    return v4

    .line 4611
    :sswitch_2
    mul-int/lit16 v4, v1, 0x140

    div-int/lit16 v4, v4, 0xf0

    return v4

    .line 4609
    :sswitch_3
    mul-int/lit16 v4, v1, 0x140

    div-int/lit16 v4, v4, 0xf0

    return v4

    .line 4607
    :sswitch_4
    mul-int/lit16 v4, v1, 0xf0

    div-int/lit16 v4, v4, 0xa0

    return v4

    .line 4605
    :sswitch_5
    mul-int/lit16 v4, v1, 0xa0

    div-int/lit8 v4, v4, 0x78

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_5
        0xa0 -> :sswitch_4
        0xd5 -> :sswitch_3
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist getMaxRecentTasksStatic()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1475
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    return v0
.end method

.method public static whitelist getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 2
    .param p0, "outState"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4353
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4356
    nop

    .line 4357
    return-void

    .line 4354
    :catch_0
    move-exception v0

    .line 4355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist getService()Landroid/app/IActivityManager;
    .locals 1

    .line 5200
    sget-object v0, Landroid/app/ActivityManager;->IActivityManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method private static blacklist getTaskService()Landroid/app/IActivityTaskManager;
    .locals 1

    .line 5204
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "callingPid"    # I
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "allowAll"    # Z
    .param p4, "requireFull"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "callerPackage"    # Ljava/lang/String;

    .line 4798
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 4799
    return p2

    .line 4802
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4804
    :catch_0
    move-exception v0

    .line 4805
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist isForegroundService(I)Z
    .locals 1
    .param p0, "procState"    # I

    .line 812
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isHighEndGfx()Z
    .locals 2

    .line 1450
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_AVOID_GFX_ACCEL:Z

    if-nez v0, :cond_0

    .line 1452
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110037

    .line 1453
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1450
    :goto_0
    return v0
.end method

.method public static whitelist isLowMemoryKillReportSupported()Z
    .locals 2

    .line 4173
    const-string/jumbo v0, "persist.sys.lmk.reportkills"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist isLowRamDeviceStatic()Z
    .locals 1

    .line 1426
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_LOW_RAM:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/app/ActivityManager;->DEVELOPMENT_FORCE_LOW_RAM:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final greylist-max-o isProcStateBackground(I)Z
    .locals 1
    .param p0, "procState"    # I

    .line 802
    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final blacklist isProcStateCached(I)Z
    .locals 1
    .param p0, "procState"    # I

    .line 807
    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isProcStateConsideredInteraction(I)Z
    .locals 1
    .param p0, "procState"    # I

    .line 5437
    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static whitelist isRunningInTestHarness()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4643
    const-string/jumbo v0, "ro.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isRunningInUserTestHarness()Z
    .locals 2

    .line 4659
    const-string/jumbo v0, "persist.sys.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isSmallBatteryDevice()Z
    .locals 1

    .line 1439
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONFIG_SMALL_BATTERY:Z

    return v0
.end method

.method public static final greylist-max-o isStartResultFatalError(I)Z
    .locals 1
    .param p0, "result"    # I

    .line 1118
    const/16 v0, -0x64

    if-gt v0, p0, :cond_0

    const/4 v0, -0x1

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final greylist-max-o isStartResultSuccessful(I)Z
    .locals 1
    .param p0, "result"    # I

    .line 1110
    if-ltz p0, :cond_0

    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isSystemReady()Z
    .locals 1

    .line 5115
    sget-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    if-nez v0, :cond_1

    .line 5116
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5117
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 5118
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    goto :goto_0

    .line 5122
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    .line 5125
    :cond_1
    :goto_0
    sget-boolean v0, Landroid/app/ActivityManager;->sSystemReady:Z

    return v0
.end method

.method public static whitelist isUserAMonkey()Z
    .locals 2

    .line 4629
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4630
    :catch_0
    move-exception v0

    .line 4631
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static synthetic blacklist lambda$addHomeVisibilityListener$0(Landroid/app/HomeVisibilityListener;)V
    .locals 1
    .param p0, "listener"    # Landroid/app/HomeVisibilityListener;

    .line 5868
    iget-boolean v0, p0, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    invoke-virtual {p0, v0}, Landroid/app/HomeVisibilityListener;->onHomeVisibilityChanged(Z)V

    return-void
.end method

.method public static greylist-max-o noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "sourceUid"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 5189
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5192
    goto :goto_1

    .line 5191
    :catch_0
    move-exception v0

    .line 5193
    :goto_1
    return-void
.end method

.method public static greylist-max-o noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "sourceUid"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 5176
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5179
    goto :goto_1

    .line 5178
    :catch_0
    move-exception v0

    .line 5180
    :goto_1
    return-void
.end method

.method public static greylist-max-o noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "sourceUid"    # I
    .param p3, "sourcePkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;

    .line 5164
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5167
    goto :goto_1

    .line 5166
    :catch_0
    move-exception v0

    .line 5168
    :goto_1
    return-void
.end method

.method public static blacklist printCapabilitiesFull(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "caps"    # I

    .line 710
    invoke-static {p0, p1}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 711
    and-int/lit8 v0, p1, -0x10

    .line 715
    .local v0, "remain":I
    if-eqz v0, :cond_0

    .line 716
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 717
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 719
    :cond_0
    return-void
.end method

.method public static blacklist printCapabilitiesSummary(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "caps"    # I

    .line 691
    and-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 692
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 693
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    const/16 v0, 0x4d

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 694
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    const/16 v1, 0x4e

    :cond_3
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 695
    return-void
.end method

.method public static blacklist printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "caps"    # I

    .line 699
    and-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 700
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 701
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    const/16 v0, 0x4d

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    const/16 v1, 0x4e

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 703
    return-void
.end method

.method public static blacklist procStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "procState"    # I

    .line 5443
    packed-switch p0, :pswitch_data_0

    .line 5508
    const-string v0, "??"

    .local v0, "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5505
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_0
    const-string v0, "NONE"

    .line 5506
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5502
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CEM "

    .line 5503
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5499
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CRE "

    .line 5500
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5496
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CACC"

    .line 5497
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5493
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CAC "

    .line 5494
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5490
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_5
    const-string v0, "LAST"

    .line 5491
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5487
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "HOME"

    .line 5488
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5484
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_7
    const-string v0, "HVY "

    .line 5485
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5481
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_8
    const-string v0, "TPSL"

    .line 5482
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5478
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_9
    const-string v0, "RCVR"

    .line 5479
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5475
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_a
    const-string v0, "SVC "

    .line 5476
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5472
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_b
    const-string v0, "BKUP"

    .line 5473
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5469
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_c
    const-string v0, "TRNB"

    .line 5470
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5466
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_d
    const-string v0, "IMPB"

    .line 5467
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5463
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_e
    const-string v0, "IMPF"

    .line 5464
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5460
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_f
    const-string v0, "BFGS"

    .line 5461
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5457
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_10
    const-string v0, "FGS "

    .line 5458
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5454
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_11
    const-string v0, "BTOP"

    .line 5455
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5451
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_12
    const-string v0, "TOP "

    .line 5452
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5448
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_13
    const-string v0, "PERU"

    .line 5449
    .restart local v0    # "procStateStr":Ljava/lang/String;
    goto :goto_0

    .line 5445
    .end local v0    # "procStateStr":Ljava/lang/String;
    :pswitch_14
    const-string v0, "PER "

    .line 5446
    .restart local v0    # "procStateStr":Ljava/lang/String;
    nop

    .line 5511
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final greylist-max-o processStateAmToProto(I)I
    .locals 1
    .param p0, "amInt"    # I

    .line 742
    packed-switch p0, :pswitch_data_0

    .line 790
    const/16 v0, 0x3e6

    return v0

    .line 786
    :pswitch_0
    const/16 v0, 0x3fb

    return v0

    .line 784
    :pswitch_1
    const/16 v0, 0x3fa

    return v0

    .line 782
    :pswitch_2
    const/16 v0, 0x3f9

    return v0

    .line 780
    :pswitch_3
    const/16 v0, 0x3f8

    return v0

    .line 778
    :pswitch_4
    const/16 v0, 0x3f7

    return v0

    .line 776
    :pswitch_5
    const/16 v0, 0x3f6

    return v0

    .line 774
    :pswitch_6
    const/16 v0, 0x3f5

    return v0

    .line 772
    :pswitch_7
    const/16 v0, 0x3f4

    return v0

    .line 770
    :pswitch_8
    const/16 v0, 0x3f3

    return v0

    .line 768
    :pswitch_9
    const/16 v0, 0x3f2

    return v0

    .line 766
    :pswitch_a
    const/16 v0, 0x3f1

    return v0

    .line 764
    :pswitch_b
    const/16 v0, 0x3f0

    return v0

    .line 762
    :pswitch_c
    const/16 v0, 0x3ef

    return v0

    .line 760
    :pswitch_d
    const/16 v0, 0x3ee

    return v0

    .line 758
    :pswitch_e
    const/16 v0, 0x3ed

    return v0

    .line 756
    :pswitch_f
    const/16 v0, 0x3ec

    return v0

    .line 754
    :pswitch_10
    const/16 v0, 0x3eb

    return v0

    .line 752
    :pswitch_11
    const/16 v0, 0x3fc

    return v0

    .line 750
    :pswitch_12
    const/16 v0, 0x3ea

    return v0

    .line 748
    :pswitch_13
    const/16 v0, 0x3e9

    return v0

    .line 746
    :pswitch_14
    const/16 v0, 0x3e8

    return v0

    .line 744
    :pswitch_15
    const/16 v0, 0x3e7

    return v0

    :pswitch_data_0
    .packed-switch -0x1
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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist restrictionLevelToName(I)Ljava/lang/String;
    .locals 1
    .param p0, "level"    # I

    .line 1288
    sparse-switch p0, :sswitch_data_0

    .line 1306
    const-string v0, ""

    return-object v0

    .line 1304
    :sswitch_0
    const-string/jumbo v0, "max"

    return-object v0

    .line 1302
    :sswitch_1
    const-string v0, "hibernation"

    return-object v0

    .line 1300
    :sswitch_2
    const-string v0, "background_restricted"

    return-object v0

    .line 1298
    :sswitch_3
    const-string/jumbo v0, "restricted_bucket"

    return-object v0

    .line 1296
    :sswitch_4
    const-string v0, "adaptive_bucket"

    return-object v0

    .line 1294
    :sswitch_5
    const-string v0, "exempted"

    return-object v0

    .line 1292
    :sswitch_6
    const-string/jumbo v0, "unrestricted"

    return-object v0

    .line 1290
    :sswitch_7
    const-string/jumbo v0, "unknown"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0xa -> :sswitch_6
        0x14 -> :sswitch_5
        0x1e -> :sswitch_4
        0x28 -> :sswitch_3
        0x32 -> :sswitch_2
        0x3c -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist resumeAppSwitches()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5155
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 5156
    return-void
.end method

.method public static whitelist semGetCurrentUser()I
    .locals 1

    .line 4835
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public static whitelist setPersistentVrThread(I)V
    .locals 1
    .param p0, "tid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5370
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->setPersistentVrThread(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5373
    goto :goto_0

    .line 5371
    :catch_0
    move-exception v0

    .line 5374
    :goto_0
    return-void
.end method

.method public static whitelist setVrThread(I)V
    .locals 1
    .param p0, "tid"    # I

    .line 5345
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->setVrThread(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5348
    goto :goto_0

    .line 5346
    :catch_0
    move-exception v0

    .line 5349
    :goto_0
    return-void
.end method

.method public static greylist-max-o staticGetLargeMemoryClass()I
    .locals 3

    .line 1409
    const-string v0, "dalvik.vm.heapsize"

    const-string v1, "16m"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1410
    .local v0, "vmHeapSize":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static greylist staticGetMemoryClass()I
    .locals 3

    .line 1381
    const-string v0, "dalvik.vm.heapgrowthlimit"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1382
    .local v0, "vmHeapSize":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1383
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1385
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist addAppTask(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .line 2734
    monitor-enter p0

    .line 2735
    :try_start_0
    invoke-direct {p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    .line 2736
    iget-object v0, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    .line 2737
    .local v0, "size":Landroid/graphics/Point;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2738
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 2739
    .local v1, "tw":I
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 2740
    .local v2, "th":I
    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ne v1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-eq v2, v3, :cond_2

    .line 2741
    :cond_0
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2745
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .line 2746
    .local v5, "dy":F
    iget v6, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v1

    iget v7, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    if-le v6, v7, :cond_1

    .line 2747
    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 2748
    .local v6, "scale":F
    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    int-to-float v9, v1

    mul-float/2addr v9, v6

    sub-float/2addr v7, v9

    mul-float v4, v7, v8

    goto :goto_0

    .line 2750
    .end local v6    # "scale":F
    :cond_1
    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    .line 2751
    .restart local v6    # "scale":F
    iget v7, v0, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v9, v2

    mul-float/2addr v9, v6

    sub-float/2addr v7, v9

    mul-float v5, v7, v8

    .line 2753
    :goto_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 2754
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2755
    add-float/2addr v8, v4

    float-to-int v8, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2757
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2758
    .local v8, "canvas":Landroid/graphics/Canvas;
    const/4 v9, 0x0

    invoke-virtual {v8, p4, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2759
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2761
    move-object p4, v3

    .line 2763
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v6    # "scale":F
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    if-nez p3, :cond_3

    .line 2764
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v3}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object p3, v3

    .line 2767
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, p4}, Landroid/app/IActivityTaskManager;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    .line 2769
    :catch_0
    move-exception v3

    .line 2770
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 2737
    .end local v0    # "size":Landroid/graphics/Point;
    .end local v1    # "tw":I
    .end local v2    # "th":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist addHomeVisibilityListener(Ljava/util/concurrent/Executor;Landroid/app/HomeVisibilityListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/HomeVisibilityListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5861
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5862
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5864
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1, p0}, Landroid/app/HomeVisibilityListener;->init(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/ActivityManager;)V

    .line 5865
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p2, Landroid/app/HomeVisibilityListener;->mObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 5867
    new-instance v0, Landroid/app/ActivityManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Landroid/app/ActivityManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/HomeVisibilityListener;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5871
    nop

    .line 5872
    return-void

    .line 5869
    :catch_0
    move-exception v0

    .line 5870
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/app/ActivityManager$OnUidImportanceListener;
    .param p2, "importanceCutpoint"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4299
    monitor-enter p0

    .line 4300
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4304
    new-instance v0, Landroid/app/ActivityManager$UidObserver;

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Landroid/app/ActivityManager$UidObserver;-><init>(Landroid/app/ActivityManager$OnUidImportanceListener;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4306
    .local v0, "observer":Landroid/app/ActivityManager$UidObserver;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x3

    .line 4308
    invoke-static {p2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceToProcState(I)I

    move-result v3

    iget-object v4, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4309
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4306
    invoke-interface {v1, v0, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4312
    nop

    .line 4313
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4314
    nop

    .end local v0    # "observer":Landroid/app/ActivityManager$UidObserver;
    monitor-exit p0

    .line 4315
    return-void

    .line 4310
    .restart local v0    # "observer":Landroid/app/ActivityManager$UidObserver;
    :catch_0
    move-exception v1

    .line 4311
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    .end local p2    # "importanceCutpoint":I
    throw v2

    .line 4301
    .end local v0    # "observer":Landroid/app/ActivityManager$UidObserver;
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    .restart local p2    # "importanceCutpoint":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    .end local p2    # "importanceCutpoint":I
    throw v0

    .line 4314
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    .restart local p2    # "importanceCutpoint":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 4674
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4677
    nop

    .line 4678
    return-void

    .line 4675
    :catch_0
    move-exception v0

    .line 4676
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist appNotResponding(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 5843
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->appNotResponding(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5846
    nop

    .line 5847
    return-void

    .line 5844
    :catch_0
    move-exception v0

    .line 5845
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist canRestrict(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 6067
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->canRestrict(ILjava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6068
    :catch_0
    move-exception v0

    .line 6069
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 6070
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist clearAppLockedUnLockedApp()V
    .locals 1

    .line 6177
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->clearAppLockedUnLockedApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6180
    goto :goto_0

    .line 6178
    :catch_0
    move-exception v0

    .line 6181
    :goto_0
    return-void
.end method

.method public whitelist clearApplicationUserData()Z
    .locals 2

    .line 3298
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    return v0
.end method

.method public greylist clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 3279
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 3280
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 3279
    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3281
    :catch_0
    move-exception v0

    .line 3282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o clearGrantedUriPermissions(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3333
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "uri_grants"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UriGrantsManager;

    .line 3334
    invoke-virtual {v0, p1}, Landroid/app/UriGrantsManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    .line 3335
    return-void
.end method

.method public blacklist clearRestrictionInfo(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 6127
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->clearRestrictionInfo(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6128
    :catch_0
    move-exception v0

    .line 6129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 6130
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist clearWatchHeapLimit()V
    .locals 6

    .line 5295
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5298
    nop

    .line 5299
    return-void

    .line 5296
    :catch_0
    move-exception v0

    .line 5297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist dumpPackageState(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5087
    invoke-static {p1, p2}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 5088
    return-void
.end method

.method public whitelist forceStopPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4488
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 4489
    return-void
.end method

.method public greylist forceStopPackageAsUser(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4475
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4478
    nop

    .line 4479
    return-void

    .line 4476
    :catch_0
    move-exception v0

    .line 4477
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist forceStopPackageByAdmin(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 6342
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->forceStopPackageByAdmin(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6345
    goto :goto_0

    .line 6343
    :catch_0
    move-exception v0

    .line 6344
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 6346
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist getAllRestrictedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    .line 6097
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllRestrictedList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6098
    :catch_0
    move-exception v0

    .line 6099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 6100
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getAppLockedCheckAction()Ljava/lang/String;
    .locals 2

    .line 6196
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6197
    :catch_0
    move-exception v0

    .line 6199
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getAppLockedLockType()Ljava/lang/String;
    .locals 2

    .line 6186
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getAppLockedLockType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6187
    :catch_0
    move-exception v0

    .line 6189
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getAppLockedPackageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6148
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getAppLockedPackageList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6149
    :catch_0
    move-exception v0

    .line 6151
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getAppTaskThumbnailSize()Landroid/util/Size;
    .locals 3

    .line 2693
    monitor-enter p0

    .line 2694
    :try_start_0
    invoke-direct {p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    .line 2695
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    monitor-exit p0

    return-object v0

    .line 2696
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist getAppTasks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;"
        }
    .end annotation

    .line 2674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2677
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$AppTask;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2680
    .local v1, "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    nop

    .line 2681
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2682
    .local v2, "numAppTasks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2683
    new-instance v4, Landroid/app/ActivityManager$AppTask;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v5}, Landroid/app/IAppTask$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ActivityManager$AppTask;-><init>(Landroid/app/IAppTask;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2682
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2685
    .end local v3    # "i":I
    :cond_0
    return-object v0

    .line 2678
    .end local v1    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v2    # "numAppTasks":I
    :catch_0
    move-exception v1

    .line 2679
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getApplockLockedAppsClass()Ljava/lang/String;
    .locals 2

    .line 6279
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6280
    :catch_0
    move-exception v0

    .line 6281
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getApplockLockedAppsPackage()Ljava/lang/String;
    .locals 2

    .line 6270
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6271
    :catch_0
    move-exception v0

    .line 6272
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getApplockType()I
    .locals 2

    .line 6288
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getApplockType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6289
    :catch_0
    move-exception v0

    .line 6290
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getBackgroundRestrictionExemptionReason(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 5952
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getBackgroundRestrictionExemptionReason(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5953
    :catch_0
    move-exception v0

    .line 5954
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 5956
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getBugreportWhitelistedPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5830
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getBugreportWhitelistedPackages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5831
    :catch_0
    move-exception v0

    .line 5832
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 2

    .line 4539
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4540
    :catch_0
    move-exception v0

    .line 4541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getFrontActivityScreenCompatMode()I
    .locals 2

    .line 1313
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFrontActivityScreenCompatMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1314
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3317
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "uri_grants"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UriGrantsManager;

    .line 3318
    invoke-virtual {v0, p1}, Landroid/app/UriGrantsManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3317
    return-object v0
.end method

.method public whitelist getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    .line 4127
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4128
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 4127
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 4129
    .local v0, "r":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 4130
    .end local v0    # "r":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    :catch_0
    move-exception v0

    .line 4131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIsolatedPids()[I
    .locals 2

    .line 4076
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getIsolatedProcessList()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4077
    :catch_0
    move-exception v0

    .line 4078
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLargeMemoryClass()I
    .locals 1

    .line 1402
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public whitelist getLauncherLargeIconDensity()I
    .locals 5

    .line 4552
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4553
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 4554
    .local v1, "density":I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 4556
    .local v2, "sw":I
    const/16 v3, 0x258

    if-ge v2, v3, :cond_0

    .line 4558
    return v1

    .line 4561
    :cond_0
    const/16 v3, 0x140

    sparse-switch v1, :sswitch_data_0

    .line 4577
    int-to-float v3, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 4573
    :sswitch_0
    const/16 v3, 0x280

    return v3

    .line 4571
    :sswitch_1
    const/16 v3, 0x1e0

    return v3

    .line 4569
    :sswitch_2
    return v3

    .line 4567
    :sswitch_3
    return v3

    .line 4565
    :sswitch_4
    const/16 v3, 0xf0

    return v3

    .line 4563
    :sswitch_5
    const/16 v3, 0xa0

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_5
        0xa0 -> :sswitch_4
        0xd5 -> :sswitch_3
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getLauncherLargeIconSize()I
    .locals 1

    .line 4588
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public whitelist getLockTaskModeState()I
    .locals 2

    .line 5323
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5324
    :catch_0
    move-exception v0

    .line 5325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMemoryClass()I
    .locals 1

    .line 1373
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v0

    return v0
.end method

.method public whitelist getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 2
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    .line 3265
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3268
    nop

    .line 3269
    return-void

    .line 3266
    :catch_0
    move-exception v0

    .line 3267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1349
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPackageFromAppProcesses(I)Ljava/lang/String;
    .locals 2
    .param p1, "pid"    # I

    .line 6139
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6140
    :catch_0
    move-exception v0

    .line 6141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPackageImportance(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4231
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4232
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4231
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4233
    .local v0, "procState":I
    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 4234
    .end local v0    # "procState":I
    :catch_0
    move-exception v0

    .line 4235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1331
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 2
    .param p1, "pids"    # [I

    .line 4379
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4380
    :catch_0
    move-exception v0

    .line 4381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProcessesInErrorState()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .line 3457
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3458
    :catch_0
    move-exception v0

    .line 3459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRecentTasks(II)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2541
    if-ltz p1, :cond_0

    .line 2544
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 2545
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 2544
    invoke-virtual {v0, p1, p2, v1}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2542
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The requested number of tasks should be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRestrictableList(I)Ljava/util/List;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    .line 6087
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getRestrictableList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6088
    :catch_0
    move-exception v0

    .line 6089
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 6090
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getRestrictedList(I)Ljava/util/List;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    .line 6107
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getRestrictedList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6108
    :catch_0
    move-exception v0

    .line 6109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 6110
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .locals 2
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 6057
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->getRestrictionInfo(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6058
    :catch_0
    move-exception v0

    .line 6059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 6060
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getResumedTaskThumbnail(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 5813
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->getResumedTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5814
    :catch_0
    move-exception v0

    .line 5815
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRunningAppProcesses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 4095
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4096
    :catch_0
    move-exception v0

    .line 4097
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getRunningExternalApplications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 3991
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3992
    :catch_0
    move-exception v0

    .line 3993
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3156
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3157
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3156
    return-object v0

    .line 3158
    :catch_0
    move-exception v0

    .line 3159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRunningServices(I)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3141
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 3142
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3141
    return-object v0

    .line 3143
    :catch_0
    move-exception v0

    .line 3144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRunningTasks(I)Ljava/util/List;
    .locals 1
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2809
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSsecureHiddenAppsPackages()Ljava/lang/String;
    .locals 2

    .line 6306
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getSsecureHiddenAppsPackages()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6307
    :catch_0
    move-exception v0

    .line 6308
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSupportedLocales()Ljava/util/Collection;
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 4527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4528
    .local v0, "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4529
    .local v4, "localeTag":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4528
    .end local v4    # "localeTag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4531
    :cond_0
    return-object v0
.end method

.method public blacklist getSwitchingFromUserMessage()Ljava/lang/String;
    .locals 2

    .line 4878
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getSwitchingFromUserMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4879
    :catch_0
    move-exception v0

    .line 4880
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSwitchingToUserMessage()Ljava/lang/String;
    .locals 2

    .line 4892
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getSwitchingToUserMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4893
    :catch_0
    move-exception v0

    .line 4894
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTotalRam()J
    .locals 3

    .line 1462
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1463
    .local v0, "memreader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1464
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getUidImportance(I)I
    .locals 2
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4251
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4252
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4251
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result v0

    .line 4253
    .local v0, "procState":I
    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 4254
    .end local v0    # "procState":I
    :catch_0
    move-exception v0

    .line 4255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUidProcessCapabilities(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 4213
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getUidProcessCapabilities(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4214
    :catch_0
    move-exception v0

    .line 4215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUidProcessState(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 4191
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4192
    :catch_0
    move-exception v0

    .line 4193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist holdLock(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "durationMs"    # I

    .line 5917
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5920
    nop

    .line 5921
    return-void

    .line 5918
    :catch_0
    move-exception v0

    .line 5919
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isActivityStartAllowedOnDisplay(Landroid/content/Context;ILandroid/content/Intent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 2949
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 2950
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 2949
    invoke-interface {v0, p2, p3, v1, v2}, Landroid/app/IActivityTaskManager;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2951
    :catch_0
    move-exception v0

    .line 2952
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2954
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAppLockedPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6167
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6168
    :catch_0
    move-exception v0

    .line 6170
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isAppLockedVerifying(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 6215
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6216
    :catch_0
    move-exception v0

    .line 6218
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isApplockEnabled()Z
    .locals 2

    .line 6297
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->isApplockEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6298
    :catch_0
    move-exception v0

    .line 6299
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isBackgroundRestricted()Z
    .locals 2

    .line 4013
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4014
    :catch_0
    move-exception v0

    .line 4015
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isFreezableUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 4058
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->isFreezableUid(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4059
    :catch_0
    move-exception v0

    .line 4060
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isInLockTaskMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5311
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isLowRamDevice()Z
    .locals 1

    .line 1420
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method public blacklist isProfileForeground(Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 5400
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 5401
    .local v0, "userManager":Landroid/os/UserManager;
    if-eqz v0, :cond_1

    .line 5402
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 5403
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 5404
    const/4 v1, 0x1

    return v1

    .line 5406
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 5408
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public greylist isUserRunning(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 5060
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5061
    :catch_0
    move-exception v0

    .line 5062
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isVrModePackageEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 5069
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5070
    :catch_0
    move-exception v0

    .line 5071
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist killBackgroundProcesses(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4409
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 4410
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 4409
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4413
    nop

    .line 4414
    return-void

    .line 4411
    :catch_0
    move-exception v0

    .line 4412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist killProcessesWhenImperceptible([ILjava/lang/String;)V
    .locals 2
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5429
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->killProcessesWhenImperceptible([ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5432
    nop

    .line 5433
    return-void

    .line 5430
    :catch_0
    move-exception v0

    .line 5431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist killUid(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4427
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 4428
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4427
    invoke-interface {v0, v1, v2, p2}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4431
    nop

    .line 4432
    return-void

    .line 4429
    :catch_0
    move-exception v0

    .line 4430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist moveTaskToFront(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .line 2904
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 2905
    return-void
.end method

.method public whitelist moveTaskToFront(IILandroid/os/Bundle;)V
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2921
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2922
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 2923
    .local v2, "appThread":Landroid/app/IApplicationThread;
    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2924
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityTaskManager;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2927
    .end local v0    # "thread":Landroid/app/ActivityThread;
    .end local v2    # "appThread":Landroid/app/IApplicationThread;
    .end local v3    # "packageName":Ljava/lang/String;
    nop

    .line 2928
    return-void

    .line 2925
    :catch_0
    move-exception v0

    .line 2926
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist queryRegisteredReceiverPackages(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6040
    if-nez p1, :cond_0

    .line 6041
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 6044
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 6045
    .local v0, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 6046
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 6045
    invoke-interface {v1, p1, v0, v2}, Landroid/app/IActivityManager;->queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 6047
    .end local v0    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 6048
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failure from system"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist removeHomeVisibilityListener(Landroid/app/HomeVisibilityListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/HomeVisibilityListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5884
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5886
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/HomeVisibilityListener;->mObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5889
    nop

    .line 5890
    return-void

    .line 5887
    :catch_0
    move-exception v0

    .line 5888
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/app/ActivityManager$OnUidImportanceListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4327
    monitor-enter p0

    .line 4328
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityManager;->mImportanceListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$UidObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4329
    .local v0, "observer":Landroid/app/ActivityManager$UidObserver;
    if-eqz v0, :cond_0

    .line 4333
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4336
    nop

    .line 4337
    .end local v0    # "observer":Landroid/app/ActivityManager$UidObserver;
    :try_start_2
    monitor-exit p0

    .line 4338
    return-void

    .line 4334
    .restart local v0    # "observer":Landroid/app/ActivityManager$UidObserver;
    :catch_0
    move-exception v1

    .line 4335
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    throw v2

    .line 4330
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ActivityManager;
    .end local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    throw v1

    .line 4337
    .end local v0    # "observer":Landroid/app/ActivityManager$UidObserver;
    .restart local p0    # "this":Landroid/app/ActivityManager;
    .restart local p1    # "listener":Landroid/app/ActivityManager$OnUidImportanceListener;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist resetAbnormalList()V
    .locals 2

    .line 4049
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resetAbnormalList()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4052
    nop

    .line 4053
    return-void

    .line 4050
    :catch_0
    move-exception v0

    .line 4051
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resetAppErrors()V
    .locals 2

    .line 5901
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resetAppErrors()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5904
    nop

    .line 5905
    return-void

    .line 5902
    :catch_0
    move-exception v0

    .line 5903
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist restartPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4394
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 4395
    return-void
.end method

.method public blacklist restrict(IIZLjava/lang/String;I)Z
    .locals 6
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "byUser"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .line 6077
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->restrict(IIZLjava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6078
    :catch_0
    move-exception v0

    .line 6079
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 6080
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist scheduleApplicationInfoChanged(Ljava/util/List;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5383
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5386
    nop

    .line 5387
    return-void

    .line 5384
    :catch_0
    move-exception v0

    .line 5385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist semCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 5675
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5678
    goto :goto_0

    .line 5676
    :catch_0
    move-exception v0

    .line 5680
    :goto_0
    return-void
.end method

.method public whitelist semForceStopPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4500
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 4502
    return-void
.end method

.method public whitelist semKeepKeyguardWaitingForActivityDrawn()V
    .locals 2

    .line 5692
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->requestWaitingForOccluding(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5695
    goto :goto_0

    .line 5693
    :catch_0
    move-exception v0

    .line 5697
    :goto_0
    return-void
.end method

.method public whitelist semKillUid(ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 4448
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    .line 4450
    return-void
.end method

.method public whitelist semRegisterActivityControllerListener(Landroid/app/ActivityManager$SemActivityControllerListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 5760
    iget-object v0, p0, Landroid/app/ActivityManager;->mActivityControllerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 5761
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityManager;->mActivityControllerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5762
    sget-object v1, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v2, "ActivityControllerListener already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5763
    monitor-exit v0

    return-void

    .line 5766
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityManager;->mActivityController:Landroid/app/ActivityManager$ActivityController;

    if-nez v1, :cond_1

    .line 5767
    new-instance v1, Landroid/app/ActivityManager$ActivityController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/ActivityManager$ActivityController;-><init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$ActivityController-IA;)V

    iput-object v1, p0, Landroid/app/ActivityManager;->mActivityController:Landroid/app/ActivityManager$ActivityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5771
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityManager;->mActivityControllerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 5772
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityManager;->mActivityController:Landroid/app/ActivityManager$ActivityController;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityTaskManager;->setActivityController(Landroid/app/IActivityController;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5775
    goto :goto_0

    .line 5773
    :catch_0
    move-exception v1

    .line 5776
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 5778
    return-void

    .line 5776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/ActivityManager$SemProcessListener;

    .line 5708
    iget-object v0, p0, Landroid/app/ActivityManager;->mProcessObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$ProcessObserver;

    .line 5709
    .local v0, "existingProcessObserver":Landroid/app/ActivityManager$ProcessObserver;
    if-eqz v0, :cond_0

    .line 5710
    sget-object v1, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v2, "ProcessListener already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5711
    return-void

    .line 5714
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$ProcessObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/ActivityManager$ProcessObserver;-><init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$ProcessObserver-IA;)V

    .line 5717
    .local v1, "processObserver":Landroid/app/ActivityManager$ProcessObserver;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 5718
    iget-object v2, p0, Landroid/app/ActivityManager;->mProcessObserverMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5719
    iget-object v2, p0, Landroid/app/ActivityManager;->mProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5722
    goto :goto_0

    .line 5720
    :catch_0
    move-exception v2

    .line 5724
    .end local v0    # "existingProcessObserver":Landroid/app/ActivityManager$ProcessObserver;
    .end local v1    # "processObserver":Landroid/app/ActivityManager$ProcessObserver;
    :goto_0
    return-void
.end method

.method public whitelist semRemoveTask(II)Z
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2884
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->semRemoveTask(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2885
    :catch_0
    move-exception v0

    .line 2887
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist semSetProcessImportant(Landroid/os/IBinder;IZ)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "isForeground"    # Z

    .line 5621
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-string/jumbo v1, "setProcessImportant()"

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5624
    goto :goto_0

    .line 5622
    :catch_0
    move-exception v0

    .line 5626
    :goto_0
    return-void
.end method

.method public whitelist semSwitchUser(I)Z
    .locals 3
    .param p1, "userid"    # I

    .line 5655
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5656
    :catch_0
    move-exception v0

    .line 5658
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "semSwitchUser failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5659
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist semUnregisterActivityControllerListener(Landroid/app/ActivityManager$SemActivityControllerListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/app/ActivityManager$SemActivityControllerListener;

    .line 5789
    iget-object v0, p0, Landroid/app/ActivityManager;->mActivityControllerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 5790
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityManager;->mActivityControllerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5791
    sget-object v1, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v2, "ActivityControllerListener no registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5792
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 5796
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityManager;->mActivityControllerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 5797
    iget-object v1, p0, Landroid/app/ActivityManager;->mActivityControllerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5798
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityTaskManager;->setActivityController(Landroid/app/IActivityController;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5802
    :cond_1
    goto :goto_0

    .line 5800
    :catch_0
    move-exception v1

    .line 5803
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 5805
    return-void

    .line 5803
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist semUnregisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/ActivityManager$SemProcessListener;

    .line 5735
    iget-object v0, p0, Landroid/app/ActivityManager;->mProcessObserverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$ProcessObserver;

    .line 5736
    .local v0, "existingProcessObserver":Landroid/app/ActivityManager$ProcessObserver;
    if-nez v0, :cond_0

    .line 5737
    sget-object v1, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v2, "ProcessListener no registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5738
    return-void

    .line 5742
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 5743
    iget-object v1, p0, Landroid/app/ActivityManager;->mProcessObserverMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5744
    iget-object v1, p0, Landroid/app/ActivityManager;->mProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5747
    goto :goto_0

    .line 5745
    :catch_0
    move-exception v1

    .line 5749
    .end local v0    # "existingProcessObserver":Landroid/app/ActivityManager$ProcessObserver;
    :goto_0
    return-void
.end method

.method public whitelist semUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "values"    # Landroid/content/res/Configuration;

    .line 5638
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5641
    goto :goto_0

    .line 5639
    :catch_0
    move-exception v0

    .line 5643
    :goto_0
    return-void
.end method

.method public blacklist setAppLockedUnLockPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6158
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setAppLockedUnLockPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6161
    goto :goto_0

    .line 6159
    :catch_0
    move-exception v0

    .line 6162
    :goto_0
    return-void
.end method

.method public blacklist setAppLockedVerifying(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "verifying"    # Z

    .line 6206
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->setAppLockedVerifying(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6209
    goto :goto_0

    .line 6207
    :catch_0
    move-exception v0

    .line 6210
    :goto_0
    return-void
.end method

.method public blacklist setApplockEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 6252
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setApplockEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6255
    goto :goto_0

    .line 6253
    :catch_0
    move-exception v0

    .line 6256
    :goto_0
    return-void
.end method

.method public blacklist setApplockLockedAppsClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "classes"    # Ljava/lang/String;

    .line 6234
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setApplockLockedAppsClass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6237
    goto :goto_0

    .line 6235
    :catch_0
    move-exception v0

    .line 6238
    :goto_0
    return-void
.end method

.method public blacklist setApplockLockedAppsPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packages"    # Ljava/lang/String;

    .line 6225
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setApplockLockedAppsPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6228
    goto :goto_0

    .line 6226
    :catch_0
    move-exception v0

    .line 6229
    :goto_0
    return-void
.end method

.method public blacklist setApplockType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 6243
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setApplockType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6246
    goto :goto_0

    .line 6244
    :catch_0
    move-exception v0

    .line 6247
    :goto_0
    return-void
.end method

.method public whitelist setDeviceLocales(Landroid/os/LocaleList;)V
    .locals 0
    .param p1, "locales"    # Landroid/os/LocaleList;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4514
    invoke-static {p1}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 4515
    return-void
.end method

.method public blacklist setFGSFilter(IZ)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 4040
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->setFGSFilter(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4041
    :catch_0
    move-exception v0

    .line 4042
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setFrontActivityScreenCompatMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1322
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setFrontActivityScreenCompatMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    nop

    .line 1326
    return-void

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .line 1358
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    nop

    .line 1362
    return-void

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1340
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    nop

    .line 1344
    return-void

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "level"    # I

    .line 4029
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4031
    :catch_0
    move-exception v0

    .line 4032
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setProcessSlowdown(IZ)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "enable"    # Z

    .line 4067
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->setProcessSlowdown(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4068
    :catch_0
    move-exception v0

    .line 4069
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setProcessStateSummary([B)V
    .locals 2
    .param p1, "state"    # [B

    .line 4160
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setProcessStateSummary([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4163
    nop

    .line 4164
    return-void

    .line 4161
    :catch_0
    move-exception v0

    .line 4162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSsecureHiddenAppsPackages(Ljava/lang/String;)V
    .locals 1
    .param p1, "packages"    # Ljava/lang/String;

    .line 6261
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6264
    goto :goto_0

    .line 6262
    :catch_0
    move-exception v0

    .line 6265
    :goto_0
    return-void
.end method

.method public blacklist setStopUserOnSwitch(I)V
    .locals 2
    .param p1, "value"    # I

    .line 4943
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setStopUserOnSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4946
    nop

    .line 4947
    return-void

    .line 4944
    :catch_0
    move-exception v0

    .line 4945
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setWatchHeapLimit(J)V
    .locals 6
    .param p1, "pssSize"    # J

    .line 5275
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 5276
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 5275
    move-wide v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5279
    nop

    .line 5280
    return-void

    .line 5277
    :catch_0
    move-exception v0

    .line 5278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startProfile(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4966
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->startProfile(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4967
    :catch_0
    move-exception v0

    .line 4968
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopProfile(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4989
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->stopProfile(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4990
    :catch_0
    move-exception v0

    .line 4991
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist stopUser(IZ)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "force"    # Z

    .line 5028
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5029
    return v0

    .line 5032
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 5034
    :catch_0
    move-exception v0

    .line 5035
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r switchUser(I)Z
    .locals 2
    .param p1, "userid"    # I

    .line 4846
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4847
    :catch_0
    move-exception v0

    .line 4848
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist switchUser(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4864
    if-eqz p1, :cond_0

    .line 4867
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->switchUser(I)Z

    move-result v0

    return v0

    .line 4865
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UserHandle cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5010
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 5014
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5015
    :catch_0
    move-exception v0

    .line 5016
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5011
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mcc or mnc cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z
    .locals 2
    .param p1, "info"    # Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 6117
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6118
    :catch_0
    move-exception v0

    .line 6119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 6120
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist waitForBroadcastIdle()V
    .locals 1

    .line 5932
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->waitForBroadcastIdle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5935
    goto :goto_0

    .line 5933
    :catch_0
    move-exception v0

    .line 5934
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 5936
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
