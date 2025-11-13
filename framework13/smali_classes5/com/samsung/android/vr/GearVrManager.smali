.class public final Lcom/samsung/android/vr/GearVrManager;
.super Ljava/lang/Object;
.source "GearVrManager.java"

# interfaces
.implements Lcom/samsung/android/vr/SemGearVrManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/GearVrManager$ARStateListener;,
        Lcom/samsung/android/vr/GearVrManager$XrStateListener;,
        Lcom/samsung/android/vr/GearVrManager$GearVrListener;,
        Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;,
        Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;,
        Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;,
        Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;,
        Lcom/samsung/android/vr/GearVrManager$ARStateCallback;,
        Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;,
        Lcom/samsung/android/vr/GearVrManager$XrStateCallback;,
        Lcom/samsung/android/vr/GearVrManager$GearVrStateCallback;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_ACTIVITY_INTERCEPTED:I = 0x1

.field public static final blacklist EVENT_ACTIVITY_RESUME_CHANGED:I = 0x2

.field public static final blacklist EVENT_AR_STATE_CHANGED:I = 0x1

.field public static final blacklist EVENT_BACK_PRESSED_ON_TASK_ROOT:I = 0x7

.field public static final blacklist EVENT_FOCUSED_DISPLAY_CHANGED:I = 0x3

.field public static final blacklist EVENT_GEARVR_STATE_CHANGED:I = 0x1

.field public static final blacklist EVENT_TASK_CREATED:I = 0x1

.field public static final blacklist EVENT_TASK_DISPLAY_CHANGED:I = 0x6

.field public static final blacklist EVENT_TASK_FOCUSE_CHANGED:I = 0x5

.field public static final blacklist EVENT_TASK_MOVE_TO_FRONT:I = 0x4

.field public static final blacklist EVENT_TASK_REMOVAL_STARTED:I = 0x3

.field public static final blacklist EVENT_TASK_REMOVED:I = 0x2

.field public static final blacklist EXTRA_XR_FLAGS:Ljava/lang/String; = "com.samsung.intent.extra.XR_FLAGS"

.field public static final blacklist FEATURE_HMT:Ljava/lang/String; = "com.samsung.feature.hmt"

.field public static final blacklist FLAG_AR_MODE:I = 0x2

.field public static final blacklist FLAG_DUAL_MODE:I = 0x10

.field public static final blacklist FLAG_GEAR_VR_ACTIVITY:I = 0x1000

.field public static final blacklist FLAG_LOW_PERSISTENCE_ENABLED:I = 0x100

.field public static final blacklist FLAG_PIXEL_ACTIVITY:I = 0x100000

.field public static final blacklist FLAG_SCENE_ACTIVITY:I = 0x200000

.field public static final blacklist FLAG_SXR_ACTIVITY:I = 0x2000

.field public static final blacklist FLAG_VR_MODE:I = 0x1

.field public static final blacklist FLAG_XR_DEFAULT:I = 0x0

.field public static final blacklist FLAG_XR_DEFAULT_ACTIVITY:I = 0x8000

.field public static final blacklist FLAG_XR_HOME_ACTIVITY:I = 0x4000

.field public static final blacklist FLAG_XR_MODE:I = 0x3

.field public static final blacklist HMT_EVENT_CONNECT:I = 0x1001

.field public static final blacklist HMT_EVENT_DISABLE_VR_IMMERSIVE_MODE:I = 0x800000

.field public static final blacklist HMT_EVENT_DISCONNECT:I = 0x1002

.field public static final blacklist HMT_EVENT_DOCK:I = 0x1

.field public static final blacklist HMT_EVENT_ENABLE_VR_IMMERSIVE_MODE:I = 0x400000

.field public static final blacklist HMT_EVENT_HIDE_META_SCREEN:I = 0x2000000

.field public static final blacklist HMT_EVENT_LOW_PERSISTENCE_ALLOWED:I = 0x40000

.field public static final blacklist HMT_EVENT_LOW_PERSISTENCE_DISABLED:I = 0x20000

.field public static final blacklist HMT_EVENT_LOW_PERSISTENCE_DISALLOWED:I = 0x80000

.field public static final blacklist HMT_EVENT_LOW_PERSISTENCE_ENABLED:I = 0x10000

.field public static final blacklist HMT_EVENT_MOUNT:I = 0x10

.field public static final blacklist HMT_EVENT_PERSISTENT_VR_ENTERED:I = 0x100000

.field public static final blacklist HMT_EVENT_PERSISTENT_VR_EXITED:I = 0x200000

.field public static final blacklist HMT_EVENT_SHOW_META_SCREEN:I = 0x1000000

.field public static final blacklist HMT_EVENT_UNDOCK:I = 0x2

.field public static final blacklist HMT_EVENT_UNMOUNT:I = 0x20

.field public static final blacklist HMT_EVENT_VR_ENTERED:I = 0x40

.field public static final blacklist HMT_EVENT_VR_EXITED:I = 0x80

.field public static final blacklist PACKAGENAME_BONDI_SERVICE:Ljava/lang/String; = "com.samsung.android.app.ar.phoneservice"

.field public static final blacklist PACKAGENAME_OCULUS:Ljava/lang/String; = "com.oculus.horizon"

.field public static final blacklist PACKAGENAME_VRSERVICE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc"

.field private static final blacklist TAG:Ljava/lang/String; = "GearVrManager"


# instance fields
.field private blacklist mARStateCallback:Lcom/samsung/android/vr/GearVrManager$ARStateCallback;

.field private final blacklist mARStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mGearVrListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGearVrStateCallback:Lcom/samsung/android/vr/GearVrManager$GearVrStateCallback;

.field private blacklist mLock:Ljava/lang/Object;

.field private blacklist mService:Lcom/samsung/android/vr/IGearVrManagerService;

.field private blacklist mTaskStackListenerCallback:Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;

.field private final blacklist mTaskStackListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToken:Landroid/os/IBinder;

.field private final blacklist mXrListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mXrStateCallback:Lcom/samsung/android/vr/GearVrManager$XrStateCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/vr/GearVrManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/vr/GearVrManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleARStateEvent(Lcom/samsung/android/vr/GearVrManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->handleARStateEvent(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleActivityResumeChanged(Lcom/samsung/android/vr/GearVrManager;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->handleActivityResumeChanged(ILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleFocusedDisplayChanged(Lcom/samsung/android/vr/GearVrManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->handleFocusedDisplayChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleGearVrStateEvent(Lcom/samsung/android/vr/GearVrManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->handleGearVrStateEvent(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTaskCreated(Lcom/samsung/android/vr/GearVrManager;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->handleTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTaskDisplayChanged(Lcom/samsung/android/vr/GearVrManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->handleTaskDisplayChanged(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTaskFocusChanged(Lcom/samsung/android/vr/GearVrManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->handleTaskFocusChanged(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTaskMoveToFront(Lcom/samsung/android/vr/GearVrManager;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->handleTaskMoveToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTaskRemovalStarted(Lcom/samsung/android/vr/GearVrManager;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->handleTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTaskRemoved(Lcom/samsung/android/vr/GearVrManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->handleTaskRemoved(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleXrStartActivityIntercepted(Lcom/samsung/android/vr/GearVrManager;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/vr/GearVrManager;->handleXrStartActivityIntercepted(IILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/vr/IGearVrManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/vr/IGearVrManagerService;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateListeners:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    .line 189
    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager;->mContext:Landroid/content/Context;

    .line 190
    iput-object p2, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    .line 191
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    .line 192
    return-void
.end method

.method public static blacklist createPendingActivityIntent(Ljava/lang/String;Landroid/content/IntentSender;I)Landroid/content/Intent;
    .locals 2
    .param p0, "targetPackageName"    # Ljava/lang/String;
    .param p1, "target"    # Landroid/content/IntentSender;
    .param p2, "xrFlags"    # I

    .line 1163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1164
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.ar.phoneservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    const-string v1, "com.samsung.intent.action.START_XR_ENTRY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1168
    const-string v1, "com.samsung.intent.extra.XR_FLAGS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1169
    return-object v0
.end method

.method public static blacklist createWaitActivityIntent(Ljava/lang/String;Landroid/content/IntentSender;I)Landroid/content/Intent;
    .locals 2
    .param p0, "targetPackageName"    # Ljava/lang/String;
    .param p1, "target"    # Landroid/content/IntentSender;
    .param p2, "xrFlags"    # I

    .line 1152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1153
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    const-string v1, "com.samsung.intent.action.HMT_START_XR_ENTRY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1157
    const-string v1, "com.samsung.intent.extra.XR_FLAGS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1158
    return-object v0
.end method

.method private blacklist findARStateListenerLocked(Lcom/samsung/android/vr/GearVrManager$ARStateListener;)I
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$ARStateListener;

    .line 921
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 922
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 923
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;

    iget-object v2, v2, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$ARStateListener;

    if-ne v2, p1, :cond_0

    .line 924
    return v1

    .line 922
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findGearVrListenerLocked(Lcom/samsung/android/vr/GearVrManager$GearVrListener;)I
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$GearVrListener;

    .line 891
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 892
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 893
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;

    iget-object v2, v2, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$GearVrListener;

    if-ne v2, p1, :cond_0

    .line 894
    return v1

    .line 892
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findTaskStackListenerLocked(Landroid/app/TaskStackListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/app/TaskStackListener;

    .line 911
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 912
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 913
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;

    iget-object v2, v2, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->mListener:Landroid/app/TaskStackListener;

    if-ne v2, p1, :cond_0

    .line 914
    return v1

    .line 912
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 917
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findXrListenerLocked(Lcom/samsung/android/vr/GearVrManager$XrStateListener;)I
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$XrStateListener;

    .line 901
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 902
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 903
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;

    iget-object v2, v2, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$XrStateListener;

    if-ne v2, p1, :cond_0

    .line 904
    return v1

    .line 902
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist handleARStateEvent(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "type"    # I

    .line 882
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 883
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 884
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 885
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;->sendAREvent(II)V

    .line 884
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 887
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 888
    return-void

    .line 887
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleActivityResumeChanged(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 864
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 866
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 867
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->sendActivityResumeChangedEvent(ILandroid/os/Bundle;)V

    .line 866
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 869
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 870
    return-void

    .line 869
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleFocusedDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 873
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 875
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 876
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;

    invoke-virtual {v3, p1}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->sendFocusedDisplayChangedEvent(I)V

    .line 875
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 878
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 879
    return-void

    .line 878
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleGearVrStateEvent(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "type"    # I

    .line 792
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 794
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 795
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->sendGearVrEvent(II)V

    .line 794
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 797
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleTaskCreated(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 810
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 812
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 813
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendTaskCreatedEvent(ILandroid/content/ComponentName;)V

    .line 812
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 815
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 816
    return-void

    .line 815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleTaskDisplayChanged(II)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "newDisplayId"    # I

    .line 855
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 857
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 858
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendTaskDisplayChanged(II)V

    .line 857
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 860
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 861
    return-void

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleTaskFocusChanged(IZ)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 846
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 848
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 849
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendTaskFocuseChangedEvent(IZ)V

    .line 848
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 851
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 852
    return-void

    .line 851
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleTaskMoveToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 837
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 839
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 840
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;

    invoke-virtual {v3, p1}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendTaskMoveToFrontEvent(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 839
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 842
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 843
    return-void

    .line 842
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 819
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 821
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 822
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;

    invoke-virtual {v3, p1}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 821
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 824
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleTaskRemoved(I)V
    .locals 4
    .param p1, "taskId"    # I

    .line 828
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 830
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 831
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;

    invoke-virtual {v3, p1}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendTaskRemovedEvent(I)V

    .line 830
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 833
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleXrStartActivityIntercepted(IILandroid/os/Bundle;)V
    .locals 4
    .param p1, "interceptedDisplayId"    # I
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 801
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 803
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 804
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;

    invoke-virtual {v3, p1, p2, p3}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->sendStartActivityInterceptedEvent(IILandroid/os/Bundle;)V

    .line 803
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 807
    return-void

    .line 806
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist registerARListenerCallbackIfNeededLocked()V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateCallback:Lcom/samsung/android/vr/GearVrManager$ARStateCallback;

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Lcom/samsung/android/vr/GearVrManager$ARStateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/vr/GearVrManager$ARStateCallback;-><init>(Lcom/samsung/android/vr/GearVrManager;Lcom/samsung/android/vr/GearVrManager$ARStateCallback-IA;)V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateCallback:Lcom/samsung/android/vr/GearVrManager$ARStateCallback;

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, v0}, Lcom/samsung/android/vr/IGearVrManagerService;->registerARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 553
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist registerGearVrCallbackIfNeededLocked()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrStateCallback:Lcom/samsung/android/vr/GearVrManager$GearVrStateCallback;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/samsung/android/vr/GearVrManager$GearVrStateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/vr/GearVrManager$GearVrStateCallback;-><init>(Lcom/samsung/android/vr/GearVrManager;Lcom/samsung/android/vr/GearVrManager$GearVrStateCallback-IA;)V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrStateCallback:Lcom/samsung/android/vr/GearVrManager$GearVrStateCallback;

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, v0}, Lcom/samsung/android/vr/IGearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 472
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist registerTaskListenerCallbackIfNeededLocked()V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListenerCallback:Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;-><init>(Lcom/samsung/android/vr/GearVrManager;Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback-IA;)V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListenerCallback:Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, v0}, Lcom/samsung/android/vr/IGearVrManagerService;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 526
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist registerXrStateCallbackIfNeededLocked()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mXrStateCallback:Lcom/samsung/android/vr/GearVrManager$XrStateCallback;

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Lcom/samsung/android/vr/GearVrManager$XrStateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/vr/GearVrManager$XrStateCallback;-><init>(Lcom/samsung/android/vr/GearVrManager;Lcom/samsung/android/vr/GearVrManager$XrStateCallback-IA;)V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mXrStateCallback:Lcom/samsung/android/vr/GearVrManager$XrStateCallback;

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, v0}, Lcom/samsung/android/vr/IGearVrManagerService;->registerXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 499
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist unregisterARStateCallbackIfNeededLocked()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateCallback:Lcom/samsung/android/vr/GearVrManager$ARStateCallback;

    if-eqz v0, :cond_0

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, v0}, Lcom/samsung/android/vr/IGearVrManagerService;->unregisterARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateCallback:Lcom/samsung/android/vr/GearVrManager$ARStateCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 696
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist unregisterTaskStackListenerCallbackIfNeededLocked()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListenerCallback:Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;

    if-eqz v0, :cond_0

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, v0}, Lcom/samsung/android/vr/IGearVrManagerService;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListenerCallback:Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    goto :goto_0

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 660
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist unregisterVrStateCallbackIfNeededLocked()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrStateCallback:Lcom/samsung/android/vr/GearVrManager$GearVrStateCallback;

    if-eqz v0, :cond_0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, v0}, Lcom/samsung/android/vr/IGearVrManagerService;->unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrStateCallback:Lcom/samsung/android/vr/GearVrManager$GearVrStateCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 588
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist unregisterXrStateCallbackIfNeededLocked()V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mXrStateCallback:Lcom/samsung/android/vr/GearVrManager$XrStateCallback;

    if-eqz v0, :cond_0

    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, v0}, Lcom/samsung/android/vr/IGearVrManagerService;->unregisterXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mXrStateCallback:Lcom/samsung/android/vr/GearVrManager$XrStateCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 624
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist acquireVrClocks(Ljava/lang/String;II)[I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "cpu"    # I
    .param p3, "gpu"    # I

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/vr/GearVrManager;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "cpu":I
    .end local p3    # "gpu":I
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 346
    .restart local p0    # "this":Lcom/samsung/android/vr/GearVrManager;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "cpu":I
    .restart local p3    # "gpu":I
    :catch_0
    move-exception v0

    .line 347
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isConnect()Z
    .locals 2

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->isConnect()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isConnected()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isDock()Z
    .locals 2

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->isDock()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isMount()Z
    .locals 2

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->isMount()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isMounted()Z
    .locals 2

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->isMounted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isPersistentVrMode()Z
    .locals 2

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0}, Lcom/samsung/android/vr/IGearVrManagerService;->isPersistentVrMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist notifyHmtEventChanged(II)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "type"    # I

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->notifyHmtEventChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    nop

    .line 711
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist registerARStateListener(Lcom/samsung/android/vr/GearVrManager$ARStateListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$ARStateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 535
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->findARStateListenerLocked(Lcom/samsung/android/vr/GearVrManager$ARStateListener;)I

    move-result v1

    .line 537
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 538
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;-><init>(Lcom/samsung/android/vr/GearVrManager$ARStateListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManager;->registerARListenerCallbackIfNeededLocked()V

    .line 541
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist registerGearVrListener(Lcom/samsung/android/vr/GearVrManager$GearVrListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$GearVrListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 454
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->findGearVrListenerLocked(Lcom/samsung/android/vr/GearVrManager$GearVrListener;)I

    move-result v1

    .line 456
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 457
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;-><init>(Lcom/samsung/android/vr/GearVrManager$GearVrListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManager;->registerGearVrCallbackIfNeededLocked()V

    .line 460
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist registerTaskStackListener(Landroid/app/TaskStackListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/app/TaskStackListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 508
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->findTaskStackListenerLocked(Landroid/app/TaskStackListener;)I

    move-result v1

    .line 510
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 511
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;-><init>(Landroid/app/TaskStackListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManager;->registerTaskListenerCallbackIfNeededLocked()V

    .line 514
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    .line 515
    return-void

    .line 514
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist registerXrListener(Lcom/samsung/android/vr/GearVrManager$XrStateListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$XrStateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 481
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->findXrListenerLocked(Lcom/samsung/android/vr/GearVrManager$XrStateListener;)I

    move-result v1

    .line 483
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 484
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;-><init>(Lcom/samsung/android/vr/GearVrManager$XrStateListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManager;->registerXrStateCallbackIfNeededLocked()V

    .line 487
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist releaseVrClocks(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/vr/GearVrManager;
    .end local p1    # "tag":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 360
    .restart local p0    # "this":Lcom/samsung/android/vr/GearVrManager;
    .restart local p1    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 361
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist resetVrThread(I)Z
    .locals 4
    .param p1, "tid"    # I

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setArDeveloperMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setArDeveloperMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    nop

    .line 719
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setConnect(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setConnect(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    nop

    .line 267
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setMount(Z)V
    .locals 2
    .param p1, "mounted"    # Z

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setMount(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .line 292
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    nop

    .line 318
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setPersistentVrMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setPersistentVrMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    nop

    .line 434
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setThreadAffinity(I[I)I
    .locals 2
    .param p1, "tid"    # I
    .param p2, "cpus"    # [I

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadAffinity(I[I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setThreadGroup(II)Z
    .locals 2
    .param p1, "tid"    # I
    .param p2, "group"    # I

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadGroup(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setThreadScheduler(III)Z
    .locals 2
    .param p1, "tid"    # I
    .param p2, "policy"    # I
    .param p3, "priority"    # I

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadScheduler(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setVrThread(II)Z
    .locals 3
    .param p1, "tid"    # I
    .param p2, "prio"    # I

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist unregisterARStateListener(Lcom/samsung/android/vr/GearVrManager$ARStateListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$ARStateListener;

    .line 668
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateCallback:Lcom/samsung/android/vr/GearVrManager$ARStateCallback;

    if-eqz v0, :cond_2

    .line 669
    if-eqz p1, :cond_1

    .line 673
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->findARStateListenerLocked(Lcom/samsung/android/vr/GearVrManager$ARStateListener;)I

    move-result v1

    .line 675
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 676
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;

    .line 677
    .local v2, "d":Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;->clearEvents()V

    .line 678
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 679
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mARStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManager;->unregisterARStateCallbackIfNeededLocked()V

    .line 683
    .end local v1    # "index":I
    .end local v2    # "d":Lcom/samsung/android/vr/GearVrManager$ARStateListenerDelegate;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 670
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist unregisterGearVrListener(Lcom/samsung/android/vr/GearVrManager$GearVrListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$GearVrListener;

    .line 560
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 561
    if-eqz p1, :cond_1

    .line 565
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->findGearVrListenerLocked(Lcom/samsung/android/vr/GearVrManager$GearVrListener;)I

    move-result v1

    .line 567
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 568
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;

    .line 569
    .local v2, "d":Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->clearEvents()V

    .line 570
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mGearVrListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 571
    if-nez v1, :cond_0

    .line 572
    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManager;->unregisterVrStateCallbackIfNeededLocked()V

    .line 575
    .end local v1    # "index":I
    .end local v2    # "d":Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 562
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist unregisterTaskStackListener(Landroid/app/TaskStackListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/app/TaskStackListener;

    .line 632
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListenerCallback:Lcom/samsung/android/vr/GearVrManager$TaskStackListenerCallback;

    if-eqz v0, :cond_2

    .line 633
    if-eqz p1, :cond_1

    .line 637
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->findTaskStackListenerLocked(Landroid/app/TaskStackListener;)I

    move-result v1

    .line 639
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 640
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;

    .line 641
    .local v2, "d":Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->clearEvents()V

    .line 642
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 643
    if-nez v1, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManager;->unregisterTaskStackListenerCallbackIfNeededLocked()V

    .line 647
    .end local v1    # "index":I
    .end local v2    # "d":Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 634
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist unregisterXrListener(Lcom/samsung/android/vr/GearVrManager$XrStateListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/vr/GearVrManager$XrStateListener;

    .line 596
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 597
    if-eqz p1, :cond_1

    .line 601
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->findXrListenerLocked(Lcom/samsung/android/vr/GearVrManager$XrStateListener;)I

    move-result v1

    .line 603
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 604
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;

    .line 605
    .local v2, "d":Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;->clearEvents()V

    .line 606
    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mXrListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 607
    if-nez v1, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManager;->unregisterXrStateCallbackIfNeededLocked()V

    .line 611
    .end local v1    # "index":I
    .end local v2    # "d":Lcom/samsung/android/vr/GearVrManager$XrStateListenerDelegate;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 598
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_2
    :goto_0
    return-void
.end method
