.class public final Landroid/app/ActivityThread$ActivityClientRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityClientRecord"
.end annotation


# instance fields
.field greylist activity:Landroid/app/Activity;

.field blacklist activityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field greylist activityInfo:Landroid/content/pm/ActivityInfo;

.field public blacklist assistToken:Landroid/os/IBinder;

.field greylist compatInfo:Landroid/content/res/CompatibilityInfo;

.field greylist-max-o createdConfig:Landroid/content/res/Configuration;

.field greylist-max-o embeddedID:Ljava/lang/String;

.field greylist-max-o hideForNow:Z

.field greylist-max-o ident:I

.field public blacklist initialCallerInfoAccessToken:Landroid/os/IBinder;

.field greylist intent:Landroid/content/Intent;

.field public final greylist-max-o isForward:Z

.field blacklist isTopResumedActivity:Z

.field greylist-max-o lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field blacklist lastReportedTopResumedState:Z

.field private final blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field blacklist mIsUserLeaving:Z

.field private final blacklist mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field blacklist mLastReportedWindowingMode:I

.field blacklist mLaunchedFromBubble:Z

.field private greylist-max-o mLifecycleState:I

.field greylist-max-o mPendingRemoveWindow:Landroid/view/Window;

.field greylist-max-o mPendingRemoveWindowManager:Landroid/view/WindowManager;

.field greylist mPreserveWindow:Z

.field blacklist mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private blacklist mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

.field public blacklist mTaskFragmentToken:Landroid/os/IBinder;

.field greylist-max-o overrideConfig:Landroid/content/res/Configuration;

.field public greylist packageInfo:Landroid/app/LoadedApk;

.field greylist-max-o parent:Landroid/app/Activity;

.field greylist paused:Z

.field greylist-max-o pendingConfigChanges:I

.field greylist-max-o pendingIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o pendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o persistentState:Landroid/os/PersistableBundle;

.field greylist-max-o profilerInfo:Landroid/app/ProfilerInfo;

.field greylist-max-o referrer:Ljava/lang/String;

.field public blacklist shareableActivityToken:Landroid/os/IBinder;

.field greylist-max-o startsNotResumed:Z

.field greylist-max-o state:Landroid/os/Bundle;

.field greylist stopped:Z

.field private final greylist-max-o tmpConfig:Landroid/content/res/Configuration;

.field public greylist token:Landroid/os/IBinder;

.field greylist-max-o voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field greylist-max-o window:Landroid/view/Window;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastReportedActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SizeConfigurationBuckets;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPreP(Landroid/app/ActivityThread$ActivityClientRecord;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreP()Z

    move-result p0

    return p0
.end method

.method public constructor greylist-max-p <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/window/ActivityWindowInfo;

    invoke-direct {v0}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    new-instance v0, Landroid/window/ActivityWindowInfo;

    invoke-direct {v0}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    iput v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    invoke-direct {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->init()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/content/Intent;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/ActivityOptions$SceneTransitionInfo;",
            "Z",
            "Landroid/app/ProfilerInfo;",
            "Landroid/app/ClientTransactionHandler;",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            "Z",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/window/ActivityWindowInfo;

    invoke-direct {v1}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    new-instance v1, Landroid/window/ActivityWindowInfo;

    invoke-direct {v1}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object/from16 v2, p16

    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    move-object/from16 v3, p17

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;

    move/from16 v4, p3

    iput v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    move-object/from16 v5, p2

    iput-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v8, p4

    iput-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v9, p8

    iput-object v9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object/from16 v10, p9

    iput-object v10, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    move-object/from16 v11, p10

    iput-object v11, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    move-object/from16 v12, p11

    iput-object v12, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    move-object/from16 v15, p5

    iput-object v15, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v2, p15

    invoke-virtual {v2, v1}, Landroid/app/ClientTransactionHandler;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    move-object/from16 v1, p12

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mLaunchedFromBubble:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mTaskFragmentToken:Landroid/os/IBinder;

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object/from16 v0, p21

    invoke-virtual {v1, v0}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$ActivityClientRecord;->init()V

    return-void
.end method

.method private greylist-max-o init()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    iput-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord$1;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$ActivityClientRecord$1;-><init>(Landroid/app/ActivityThread$ActivityClientRecord;)V

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    return-void
.end method

.method private greylist-max-o isPreHoneycomb()Z
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isPreP()Z
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist getActivityWindowInfo()Landroid/window/ActivityWindowInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object v0
.end method

.method public greylist-max-o getLifecycleState()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    return v0
.end method

.method public greylist-max-o getStateString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityClientRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hideForNow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", startsNotResumed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isForward="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pendingConfigChanges="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", preserveWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "}"

    if-eqz v2, :cond_0

    const-string v2, ", Activity{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resumed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", destroyed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startedActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mStartedActivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", changingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o isPersistable()Z
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isVisibleFromServer()Z
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o setState(I)V
    .locals 3

    iput p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    iget v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mLifecycleState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_0

    :pswitch_4
    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityRecord{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_1

    const-string/jumbo v2, "no component name"

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
