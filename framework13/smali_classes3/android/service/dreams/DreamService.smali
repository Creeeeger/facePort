.class public Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "DreamService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamService$DreamMetadata;,
        Landroid/service/dreams/DreamService$DreamActivityCallback;,
        Landroid/service/dreams/DreamService$DreamServiceWrapper;,
        Landroid/service/dreams/DreamService$OverlayConnection;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist DEFAULT_SHOW_COMPLICATIONS:Z = false

.field public static final whitelist DREAM_META_DATA:Ljava/lang/String; = "android.service.dream"

.field private static final blacklist DREAM_META_DATA_ROOT_TAG:Ljava/lang/String; = "dream"

.field public static final greylist-max-o DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field public static final blacklist EXTRA_DREAM_OVERLAY_COMPONENT:Ljava/lang/String; = "android.service.dream.DreamService.dream_overlay_component"

.field public static final blacklist EXTRA_SHOW_COMPLICATIONS:Ljava/lang/String; = "android.service.dreams.SHOW_COMPLICATIONS"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.dreams.DreamService"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private greylist-max-o mCanDoze:Z

.field private greylist-max-o mDebug:Z

.field private blacklist mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

.field private greylist-max-o mDozeScreenBrightness:I

.field private blacklist mDozeScreenMode:I

.field private greylist-max-o mDozeScreenState:I

.field private greylist-max-o mDozing:Z

.field private final blacklist mDreamManager:Landroid/service/dreams/IDreamManager;

.field private blacklist mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

.field private blacklist mDreamToken:Landroid/os/IBinder;

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFullscreen:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mInteractive:Z

.field private final blacklist mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

.field private final blacklist mOverlayConnection:Landroid/service/dreams/DreamService$OverlayConnection;

.field private greylist-max-o mScreenBright:Z

.field private blacklist mShouldWaitForTransitionToAodUi:Z

.field private greylist-max-o mStarted:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private greylist-max-o mWaking:Z

.field private greylist-max-o mWindow:Landroid/view/Window;

.field private greylist-max-o mWindowless:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivity(Landroid/service/dreams/DreamService;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDispatchAfterOnAttachedToWindow(Landroid/service/dreams/DreamService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDreamToken(Landroid/service/dreams/DreamService;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinished(Landroid/service/dreams/DreamService;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayCallback(Landroid/service/dreams/DreamService;)Landroid/service/dreams/IDreamOverlayCallback;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamService$OverlayConnection;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamService$OverlayConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/service/dreams/DreamService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindow(Landroid/service/dreams/DreamService;)Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivity(Landroid/service/dreams/DreamService;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindow(Landroid/service/dreams/DreamService;Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mattach(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdetach(Landroid/service/dreams/DreamService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monWindowCreated(Landroid/service/dreams/DreamService;Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->onWindowCreated(Landroid/view/Window;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwakeUp(Landroid/service/dreams/DreamService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smfetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 0

    invoke-static {p0, p1}, Landroid/service/dreams/DreamService;->fetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfetchShouldShowComplications(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/service/dreams/DreamService;->fetchShouldShowComplications(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 175
    const-class v0, Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    .line 177
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/service/dreams/DreamService;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 334
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    .line 226
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 240
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 243
    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    .line 247
    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 325
    new-instance v0, Landroid/service/dreams/DreamService$1;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$1;-><init>(Landroid/service/dreams/DreamService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    .line 335
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 336
    new-instance v0, Landroid/service/dreams/DreamService$OverlayConnection;

    invoke-direct {v0}, Landroid/service/dreams/DreamService$OverlayConnection;-><init>()V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamService$OverlayConnection;

    .line 337
    return-void
.end method

.method private greylist-max-o applyFlags(III)I
    .locals 2
    .param p1, "oldFlags"    # I
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .line 1404
    not-int v0, p3

    and-int/2addr v0, p1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o applyWindowFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 1395
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 1396
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1397
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1398
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1399
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1401
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private greylist-max-o attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    .locals 5
    .param p1, "dreamToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z
    .param p3, "started"    # Landroid/os/IRemoteCallback;

    .line 1271
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach() called when dream with token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already attached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return-void

    .line 1276
    :cond_0
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 1286
    :cond_1
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    .line 1287
    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 1288
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1289
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only doze dreams can be windowless"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1292
    :cond_3
    :goto_0
    new-instance v0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

    .line 1311
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez v1, :cond_5

    .line 1312
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/service/dreams/DreamActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1313
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1315
    new-instance v1, Landroid/service/dreams/DreamService$DreamActivityCallback;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-direct {v1, p0, v2}, Landroid/service/dreams/DreamService$DreamActivityCallback;-><init>(Landroid/service/dreams/DreamService;Landroid/os/IBinder;)V

    const-string v2, "binder"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 1316
    new-instance v1, Landroid/content/ComponentName;

    .line 1317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1316
    invoke-static {p0, v1}, Landroid/service/dreams/DreamService;->fetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 1318
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {p0, v1}, Landroid/service/dreams/DreamService;->fetchDreamLabel(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1321
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityTaskManager;->startDreamActivity(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1322
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :cond_4
    goto :goto_1

    .line 1324
    :catch_0
    move-exception v2

    .line 1325
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v4, "Could not connect to activity task manager to start dream activity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1328
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 1329
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1331
    :goto_2
    return-void

    .line 1277
    :cond_6
    :goto_3
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "attach() called after dream already finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :try_start_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1282
    goto :goto_4

    .line 1280
    :catch_1
    move-exception v0

    .line 1283
    :goto_4
    return-void
.end method

.method private static greylist-max-o clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .line 1471
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static blacklist convertToComponentName(Ljava/lang/String;Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "flattenedString"    # Ljava/lang/String;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 1229
    if-nez p0, :cond_0

    .line 1230
    const/4 v0, 0x0

    return-object v0

    .line 1233
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1234
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1237
    :cond_1
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o detach()V
    .locals 3

    .line 1246
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1247
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "detach(): Calling onDreamingStopped()"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_0
    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    .line 1249
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 1252
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1253
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    .line 1255
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 1258
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    .line 1259
    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 1260
    return-void
.end method

.method private static blacklist fetchDreamLabel(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 1424
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1425
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1426
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist fetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1431
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1434
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-wide/16 v1, 0x80

    .line 1435
    :try_start_0
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v1

    .line 1434
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1436
    :catch_0
    move-exception v1

    .line 1437
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Landroid/service/dreams/DreamService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist fetchShouldShowComplications(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 1414
    invoke-static {p0, p1}, Landroid/service/dreams/DreamService;->getDreamMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;

    move-result-object v0

    .line 1415
    .local v0, "metadata":Landroid/service/dreams/DreamService$DreamMetadata;
    if-eqz v0, :cond_0

    .line 1416
    iget-boolean v1, v0, Landroid/service/dreams/DreamService$DreamMetadata;->showComplications:Z

    return v1

    .line 1418
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getDreamMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 1170
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1172
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1174
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v1, p1}, Landroid/service/dreams/DreamService;->readMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1175
    .local v2, "rawMetadata":Landroid/content/res/TypedArray;
    if-nez v2, :cond_2

    .line 1183
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->close()V

    .line 1175
    :cond_1
    return-object v0

    .line 1176
    :cond_2
    :try_start_0
    new-instance v0, Landroid/service/dreams/DreamService$DreamMetadata;

    .line 1177
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/service/dreams/DreamService;->convertToComponentName(Ljava/lang/String;Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x1

    .line 1179
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x2

    .line 1181
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-direct {v0, v4, v5, v3}, Landroid/service/dreams/DreamService$DreamMetadata;-><init>(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->close()V

    .line 1176
    :cond_3
    return-object v0

    .line 1174
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v0
.end method

.method private greylist-max-o getWindowFlagValue(IZ)Z
    .locals 1
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    .line 1391
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist onWindowCreated(Landroid/view/Window;)V
    .locals 5
    .param p1, "w"    # Landroid/view/Window;

    .line 1334
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 1335
    invoke-virtual {p1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 1336
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 1338
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1339
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1345
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x400

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const v4, 0x1490101

    or-int/2addr v2, v4

    .line 1346
    iget-boolean v4, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x80

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    or-int/2addr v2, v4

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1348
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1350
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1353
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1356
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 1357
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 1359
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/service/dreams/DreamService$2;

    invoke-direct {v2, p0}, Landroid/service/dreams/DreamService$2;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1388
    return-void
.end method

.method private static blacklist readMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/content/res/TypedArray;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 1193
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1197
    :cond_0
    :try_start_0
    const-string v1, "android.service.dream"

    .line 1198
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v1, :cond_3

    .line 1200
    :try_start_1
    sget-boolean v2, Landroid/service/dreams/DreamService;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v3, "No android.service.dream metadata"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    :cond_1
    nop

    .line 1221
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1201
    :cond_2
    return-object v0

    .line 1204
    :cond_3
    :try_start_3
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1206
    .local v2, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .line 1207
    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 1208
    goto :goto_1

    .line 1210
    .end local v3    # "type":I
    :cond_4
    goto :goto_0

    .line 1212
    :cond_5
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dream"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1213
    sget-boolean v3, Landroid/service/dreams/DreamService;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 1214
    sget-object v3, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v4, "Metadata does not start with dream tag"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1216
    :cond_6
    nop

    .line 1221
    if-eqz v1, :cond_7

    :try_start_4
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1216
    :cond_7
    return-object v0

    .line 1219
    :cond_8
    :try_start_5
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->Dream:[I

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1221
    if-eqz v1, :cond_9

    :try_start_6
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1219
    :cond_9
    return-object v3

    .line 1197
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_a

    :try_start_7
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "pm":Landroid/content/pm/PackageManager;
    .end local p1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_a
    :goto_2
    throw v2
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1221
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "pm":Landroid/content/pm/PackageManager;
    .restart local p1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 1222
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/service/dreams/DreamService;->DEBUG:Z

    if-eqz v2, :cond_b

    sget-object v2, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    :cond_b
    return-object v0

    .line 1194
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_3
    return-object v0
.end method

.method private greylist-max-o updateDoze()V
    .locals 6

    .line 784
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 785
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Updating doze without a dream token."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void

    .line 789
    :cond_0
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v0, :cond_1

    .line 793
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    iget v4, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    iget-boolean v5, p0, Landroid/service/dreams/DreamService;->mShouldWaitForTransitionToAodUi:Z

    invoke-interface/range {v0 .. v5}, Landroid/service/dreams/IDreamManager;->semStartDozing(Landroid/os/IBinder;IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 799
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o wakeUp(Z)V
    .locals 3
    .param p1, "fromSystem"    # Z

    .line 1105
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeUp(): fromSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWaking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_3

    .line 1111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    .line 1113
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1121
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    .line 1127
    :cond_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onWakeUp()V

    .line 1131
    if-nez p1, :cond_3

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_3

    .line 1132
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 1133
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "WakeUp was called before the dream was attached."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1136
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    goto :goto_0

    .line 1137
    :catch_0
    move-exception v0

    .line 1143
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 592
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    return-void
.end method

.method public greylist-max-p canDoze()Z
    .locals 1

    .line 743
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    return v0
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 401
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 402
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Waking up on genericMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 404
    const/4 v0, 0x1

    return v0

    .line 406
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 351
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 352
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "Waking up on keyEvent"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 354
    return v1

    .line 355
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 356
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "Waking up on back key"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 358
    return v1

    .line 360
    :cond_3
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 366
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 367
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Waking up on keyShortcutEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 369
    const/4 v0, 0x1

    return v0

    .line 371
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 379
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 380
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "Waking up on touchEvent"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 382
    return v1

    .line 384
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 390
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 391
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Waking up on trackballEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 393
    const/4 v0, 0x1

    return v0

    .line 395
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1444
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p3}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    const-string v3, ""

    const-wide/16 v4, 0x3e8

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1445
    return-void
.end method

.method protected greylist-max-o dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1450
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz v0, :cond_0

    .line 1451
    const-string/jumbo v0, "stopped"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1453
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "running (dreamToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    const-string v0, "  flags:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " interactive"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1458
    :cond_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " fullscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1459
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " bright"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1460
    :cond_3
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isWindowless()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " windowless"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1461
    :cond_4
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " dozing"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1462
    :cond_5
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " candoze"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1463
    :cond_6
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1464
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  doze screen state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  doze screen brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    :cond_7
    return-void
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 613
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist finish()V
    .locals 4

    .line 1060
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish(): mFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    .line 1063
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 1064
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1066
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 1068
    :cond_1
    return-void

    .line 1071
    :cond_2
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz v1, :cond_3

    .line 1072
    return-void

    .line 1074
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    .line 1076
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamService$OverlayConnection;

    invoke-virtual {v2, p0}, Landroid/service/dreams/DreamService$OverlayConnection;->unbind(Landroid/content/Context;)V

    .line 1078
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-nez v2, :cond_4

    .line 1079
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "Finish was called before the dream was attached."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->stopSelf()V

    .line 1081
    return-void

    .line 1087
    :cond_4
    :try_start_0
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v3, v2, v1}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    goto :goto_0

    .line 1088
    :catch_0
    move-exception v1

    .line 1091
    :goto_0
    return-void
.end method

.method public greylist-max-r getDozeScreenBrightness()I
    .locals 1

    .line 944
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    return v0
.end method

.method public greylist-max-o getDozeScreenState()I
    .locals 1

    .line 850
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    return v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .locals 1

    .line 529
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 519
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public greylist-max-p isDozing()Z
    .locals 1

    .line 835
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    return v0
.end method

.method public whitelist isFullscreen()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    return v0
.end method

.method public whitelist isInteractive()Z
    .locals 1

    .line 662
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    return v0
.end method

.method public whitelist isScreenBright()Z
    .locals 2

    .line 709
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->getWindowFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isWindowless()Z
    .locals 1

    .line 728
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method synthetic blacklist lambda$attach$0$android-service-dreams-DreamService(Landroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "started"    # Landroid/os/IRemoteCallback;

    .line 1293
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz v0, :cond_1

    .line 1294
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    .line 1296
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    :try_start_1
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1302
    nop

    .line 1305
    :cond_1
    return-void

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1298
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1299
    :try_start_2
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1302
    nop

    .line 1303
    throw v1

    .line 1300
    :catch_1
    move-exception v0

    .line 1301
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method synthetic blacklist lambda$dump$1$android-service-dreams-DreamService(Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "pw1"    # Ljava/io/PrintWriter;
    .param p4, "prefix"    # Ljava/lang/String;

    .line 1444
    invoke-virtual {p0, p1, p3, p2}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 508
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 503
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    .line 463
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1030
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind() intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    .line 1034
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez v0, :cond_1

    .line 1035
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamService$OverlayConnection;

    .line 1037
    const-string v1, "android.service.dream.DreamService.dream_overlay_component"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    new-instance v2, Landroid/content/ComponentName;

    .line 1038
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1035
    invoke-virtual {v0, p0, v1, v2}, Landroid/service/dreams/DreamService$OverlayConnection;->bind(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1041
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    return-object v0
.end method

.method public whitelist onContentChanged()V
    .locals 0

    .line 453
    return-void
.end method

.method public whitelist onCreate()V
    .locals 2

    .line 990
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 992
    return-void
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .line 418
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .locals 2

    .line 1148
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    .line 1154
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1155
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    .line 468
    return-void
.end method

.method public whitelist onDreamingStarted()V
    .locals 2

    .line 998
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_0
    return-void
.end method

.method public whitelist onDreamingStopped()V
    .locals 2

    .line 1007
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_0
    return-void
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 473
    return-void
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSearchRequested()Z
    .locals 1

    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/SearchEvent;

    .line 478
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1047
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamService$OverlayConnection;

    invoke-virtual {v0, p0}, Landroid/service/dreams/DreamService$OverlayConnection;->unbind(Landroid/content/Context;)V

    .line 1049
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onWakeUp()V
    .locals 0

    .line 1024
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 1025
    return-void
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 448
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 458
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 490
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 497
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 635
    invoke-virtual {p0, p1}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 636
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_0

    .line 640
    return-object v0

    .line 637
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this DreamService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist semSetDozeScreenBrightness(II)V
    .locals 2
    .param p1, "dozeMode"    # I
    .param p2, "brightness"    # I

    .line 916
    const/4 v0, 0x0

    .line 917
    .local v0, "needToUpdateDoze":Z
    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    if-eq v1, p2, :cond_0

    .line 918
    iput p2, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 919
    const/4 v0, 0x1

    .line 921
    :cond_0
    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    if-eq v1, p1, :cond_1

    .line 922
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    .line 923
    const/4 v0, 0x1

    .line 925
    :cond_1
    if-eqz v0, :cond_2

    .line 926
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 928
    :cond_2
    return-void
.end method

.method public whitelist setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .line 544
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 545
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 560
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 561
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 580
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    return-void
.end method

.method public greylist-max-o setDebug(Z)V
    .locals 0
    .param p1, "dbg"    # Z

    .line 343
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 344
    return-void
.end method

.method public greylist setDozeScreenBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 976
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 977
    invoke-static {p1}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightness(I)I

    move-result p1

    .line 979
    :cond_0
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    if-eq v0, p1, :cond_1

    .line 980
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 981
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 983
    :cond_1
    return-void
.end method

.method public greylist setDozeScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 892
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    if-eq v0, p1, :cond_0

    .line 893
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 894
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 896
    :cond_0
    return-void
.end method

.method public greylist setDozeScreenState(IZ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "shouldWaitForTransitionToAodUi"    # Z

    .line 905
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mShouldWaitForTransitionToAodUi:Z

    if-eq v0, p2, :cond_1

    .line 906
    :cond_0
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 907
    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mShouldWaitForTransitionToAodUi:Z

    .line 908
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 910
    :cond_1
    return-void
.end method

.method public whitelist setFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .line 673
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eq v0, p1, :cond_1

    .line 674
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    .line 675
    const/16 v0, 0x400

    .line 676
    .local v0, "flag":I
    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 678
    .end local v0    # "flag":I
    :cond_1
    return-void
.end method

.method public whitelist setInteractive(Z)V
    .locals 0
    .param p1, "interactive"    # Z

    .line 653
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    .line 654
    return-void
.end method

.method public whitelist setScreenBright(Z)V
    .locals 2
    .param p1, "screenBright"    # Z

    .line 695
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eq v0, p1, :cond_1

    .line 696
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 697
    const/16 v0, 0x80

    .line 698
    .local v0, "flag":I
    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 700
    .end local v0    # "flag":I
    :cond_1
    return-void
.end method

.method public blacklist setWindowless(Z)V
    .locals 0
    .param p1, "windowless"    # Z

    .line 719
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    .line 720
    return-void
.end method

.method public greylist startDozing()V
    .locals 1

    .line 777
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-nez v0, :cond_0

    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 779
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 781
    :cond_0
    return-void
.end method

.method public greylist-max-p stopDozing()V
    .locals 2

    .line 814
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v0, :cond_0

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 817
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/dreams/IDreamManager;->stopDozing(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 822
    :cond_0
    :goto_0
    return-void
.end method

.method public final whitelist wakeUp()V
    .locals 1

    .line 1101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 1102
    return-void
.end method
