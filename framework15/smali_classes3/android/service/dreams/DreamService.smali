.class public Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "DreamService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamService$DefaultInjector;,
        Landroid/service/dreams/DreamService$Injector;,
        Landroid/service/dreams/DreamService$DreamServiceWrapper;,
        Landroid/service/dreams/DreamService$DreamMetadata;,
        Landroid/service/dreams/DreamService$DreamActivityCallbacks;,
        Landroid/service/dreams/DreamService$DreamCategory;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist DEFAULT_SHOW_COMPLICATIONS:Z = false

.field public static final blacklist DREAM_CATEGORY_DEFAULT:I = 0x0

.field public static final blacklist DREAM_CATEGORY_HOME_PANEL:I = 0x2

.field public static final blacklist DREAM_CATEGORY_LOW_LIGHT:I = 0x1

.field public static final whitelist DREAM_META_DATA:Ljava/lang/String; = "android.service.dream"

.field private static final blacklist DREAM_META_DATA_ROOT_TAG:Ljava/lang/String; = "dream"

.field public static final greylist-max-o DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field static final blacklist EXTRA_DREAM_OVERLAY_COMPONENT:Ljava/lang/String; = "android.service.dream.DreamService.dream_overlay_component"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.dreams.DreamService"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private greylist-max-o mCanDoze:Z

.field private greylist-max-o mDebug:Z

.field private blacklist mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

.field private volatile greylist-max-o mDozeScreenBrightness:I

.field private blacklist mDozeScreenMode:I

.field private volatile greylist-max-o mDozeScreenState:I

.field private volatile blacklist mDozeScreenStateReason:I

.field private greylist-max-o mDozing:Z

.field private blacklist mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

.field private blacklist mDreamComponent:Landroid/content/ComponentName;

.field private final blacklist mDreamManager:Landroid/service/dreams/IDreamManager;

.field private blacklist mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

.field private blacklist mDreamToken:Landroid/os/IBinder;

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFullscreen:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final blacklist mInjector:Landroid/service/dreams/DreamService$Injector;

.field private greylist-max-o mInteractive:Z

.field private blacklist mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

.field private blacklist mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

.field private blacklist mPreviewMode:Z

.field private blacklist mRedirectWake:Z

.field private greylist-max-o mScreenBright:Z

.field private blacklist mShouldShowComplications:Z

.field private blacklist mShouldWaitForTransitionToAodUi:Z

.field private greylist-max-o mStarted:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTrackingConfirmKey:Ljava/lang/Integer;

.field private greylist-max-o mWaking:Z

.field private greylist-max-o mWindow:Landroid/view/Window;

.field private greylist-max-o mWindowless:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$0g4j9kyYO39EEbwnpMH4QYpyJlE(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$onWakeUp$0(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6c02sU8ou_8-bJpd9g_lfxB-Ttc(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$finish$1(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EnTA56MuqG-Lc2_Dn1XOtb2UP4k(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$attach$4(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WLGM0XyTnMnz1Ysqn-j6RNjh6WU(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$wakeUp$3(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dzgVyahPsVfppuhCsEb8C9WyWSI(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/dreams/DreamService;->lambda$dump$5(Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yZUowb9s5pr4SI1Z6cqgLDRLMhc(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$comeToFront$2(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

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

.method static bridge synthetic blacklist -$$Nest$fgetmDreamComponent(Landroid/service/dreams/DreamService;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mDreamComponent:Landroid/content/ComponentName;

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

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldShowComplications(Landroid/service/dreams/DreamService;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/dreams/DreamService;->mShouldShowComplications:Z

    return p0
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

.method static bridge synthetic blacklist -$$Nest$fputmRedirectWake(Landroid/service/dreams/DreamService;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mRedirectWake:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindow(Landroid/service/dreams/DreamService;Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mattach(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcomeToFront(Landroid/service/dreams/DreamService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->comeToFront()V

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

.method static constructor blacklist <clinit>()V
    .locals 2

    const-class v0, Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/service/dreams/DreamService;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    new-instance v0, Landroid/service/dreams/DreamService$DefaultInjector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/dreams/DreamService$DefaultInjector;-><init>(Landroid/service/dreams/DreamService$DefaultInjector-IA;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;-><init>(Landroid/service/dreams/DreamService$Injector;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/dreams/DreamService$Injector;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0, p0}, Landroid/service/dreams/DreamService$Injector;->init(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private greylist-max-o applyFlags(III)I
    .locals 2

    not-int v0, p3

    and-int/2addr v0, p1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o applyWindowFlags(II)V
    .locals 3

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private blacklist attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .locals 6

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

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

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    iput-boolean p3, p0, Landroid/service/dreams/DreamService;->mPreviewMode:Z

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mPreviewMode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    :cond_2
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->isCallerSystemUi()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only doze or SystemUI dreams can be windowless."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    new-instance v0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p4}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda4;-><init>(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v1}, Landroid/service/dreams/DreamService$Injector;->getDreamActivityComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v1}, Landroid/service/dreams/DreamService$Injector;->getDreamPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-direct {v1, p0, v2}, Landroid/service/dreams/DreamService$DreamActivityCallbacks;-><init>(Landroid/service/dreams/DreamService;Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Landroid/service/dreams/DreamActivity;->setCallback(Landroid/content/Intent;Landroid/service/dreams/DreamService$DreamActivityCallbacks;)V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v1}, Landroid/service/dreams/DreamService$Injector;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v2}, Landroid/service/dreams/DreamService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v3}, Landroid/service/dreams/DreamService$Injector;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3, v1, p3}, Landroid/service/dreams/DreamService;->fetchDreamLabel(Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/pm/ServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/service/dreams/DreamActivity;->setTitle(Landroid/content/Intent;Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v3, v0}, Landroid/service/dreams/IDreamManager;->startDreamActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    iget-object v4, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v5, "Could not connect to activity task manager to start dream activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_2

    :catch_1
    move-exception v3

    iget-object v4, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v5, "Received SecurityException trying to start DreamActivity. Aborting dream start."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    :goto_1
    nop

    :goto_2
    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_3
    return-void

    :cond_6
    :goto_4
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "attach() called after dream already finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_5
    return-void
.end method

.method private static greylist-max-o clampAbsoluteBrightness(I)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private blacklist comeToFront()V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda3;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static blacklist convertToComponentName(Ljava/lang/String;Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent package name in component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", should be: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    return-object v1
.end method

.method private greylist-max-o detach()V
    .locals 3

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "detach(): Calling onDreamingStopped()"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    return-void
.end method

.method private static blacklist fetchDreamLabel(Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/pm/ServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p3, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x10404a2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static blacklist fetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    const-wide/16 v1, 0x80

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

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

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist fetchShouldShowComplications(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Z
    .locals 2

    invoke-static {p0, p1}, Landroid/service/dreams/DreamService;->getDreamMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/service/dreams/DreamService$DreamMetadata;->showComplications:Z

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getDreamMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/service/dreams/DreamService;->getDreamMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDreamMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "dream"

    sget-object v2, Lcom/android/internal/R$styleable;->Dream:[I

    const-string v3, "android.service.dream"

    invoke-virtual {p0, p1, v3, v1, v2}, Landroid/content/pm/PackageManager;->extractPackageItemInfoAttributes(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    :cond_1
    return-object v0

    :cond_2
    :try_start_0
    new-instance v2, Landroid/service/dreams/DreamService$DreamMetadata;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/service/dreams/DreamService;->convertToComponentName(Ljava/lang/String;Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-direct {v2, v4, v5, v6, v3}, Landroid/service/dreams/DreamService$DreamMetadata;-><init>(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    :cond_3
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v3, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to create read metadata"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    :cond_4
    return-object v0

    :goto_0
    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v0
.end method

.method private greylist-max-o getWindowFlagValue(IZ)Z
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

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

.method private blacklist isCallerSystemUi()Z
    .locals 1

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$attach$4(Landroid/os/IRemoteCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private synthetic blacklist lambda$comeToFront$2(Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->comeToFront()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not tell overlay to come to front:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$dump$5(Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p3, p2}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$finish$1(Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->endDream()V

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-virtual {v0}, Landroid/service/dreams/DreamOverlayConnectionHandler;->unbind()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not inform overlay of dream end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$onWakeUp$0(Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->wakeUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Error waking the overlay service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    throw v0
.end method

.method private synthetic blacklist lambda$wakeUp$3(Landroid/service/dreams/IDreamOverlayClient;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->onWakeRequested()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not inform overlay of dream wakeup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist onWindowCreated(Landroid/view/Window;)V
    .locals 5

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

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

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/WindowInsetsController;->hide(I)V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateAccessibilityMessage()V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/service/dreams/DreamService$3;

    invoke-direct {v2, p0}, Landroid/service/dreams/DreamService$3;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public static blacklist setDreamOverlayComponent(Landroid/content/Intent;Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "android.service.dream.DreamService.dream_overlay_component"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist updateAccessibilityMessage()V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/service/dreams/utils/DreamAccessibility;

    invoke-direct {v1, p0, v0}, Landroid/service/dreams/utils/DreamAccessibility;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Landroid/service/dreams/DreamService;->mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isInteractive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/dreams/utils/DreamAccessibility;->updateAccessibilityConfiguration(Ljava/lang/Boolean;)V

    return-void
.end method

.method private greylist-max-o updateDoze()V
    .locals 8

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Updating doze without a dream token."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iget v4, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    iget v5, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    iget v6, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    iget-boolean v7, p0, Landroid/service/dreams/DreamService;->mShouldWaitForTransitionToAodUi:Z

    invoke-interface/range {v1 .. v7}, Landroid/service/dreams/IDreamManager;->semStartDozing(Landroid/os/IBinder;IIIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o wakeUp(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

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

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getRedirectWake()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onWakeUp()V

    if-nez p1, :cond_4

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "WakeUp was called before the dream was attached."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public greylist-max-p canDoze()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    return v0
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Waking up on genericMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-static {}, Landroid/service/dreams/Flags;->dreamHandlesConfirmKeys()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/service/dreams/DreamService$1;

    invoke-direct {v3, p0}, Landroid/service/dreams/DreamService$1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_1

    :cond_3
    :goto_0
    return v1

    :pswitch_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    nop

    :goto_1
    return v1

    :cond_5
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "Waking up on keyEvent"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    return v1

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "Waking up on back key"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    return v1

    :cond_9
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Waking up on keyShortcutEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "Waking up on touchEvent"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    return v1

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Waking up on trackballEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p3}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda5;-><init>(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    const-string v3, ""

    const-wide/16 v4, 0x3e8

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    return-void
.end method

.method protected greylist-max-o dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

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

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stopped"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

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

    const-string v0, "  flags:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " interactive"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " fullscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " bright"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isWindowless()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " windowless"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " dozing"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " candoze"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_7

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

    :cond_7
    return-void
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist finish()V
    .locals 4

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    :cond_0
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_1

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

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_2
    return-void

    :cond_3
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-nez v2, :cond_6

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "finish() called when not attached."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->stopSelf()V

    return-void

    :cond_6
    :try_start_0
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v1}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void
.end method

.method public blacklist getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public greylist-max-r getDozeScreenBrightness()I
    .locals 1

    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    return v0
.end method

.method public greylist-max-o getDozeScreenState()I
    .locals 1

    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    return v0
.end method

.method public blacklist getRedirectWake()Z
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mRedirectWake:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

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

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    return v0
.end method

.method public whitelist isFullscreen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    return v0
.end method

.method public whitelist isInteractive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    return v0
.end method

.method public whitelist isScreenBright()Z
    .locals 2

    const/16 v0, 0x80

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    invoke-direct {p0, v0, v1}, Landroid/service/dreams/DreamService;->getWindowFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isWindowless()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

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

    :cond_0
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    const-string v0, "android.service.dream.DreamService.dream_overlay_component"

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v1, v0}, Landroid/service/dreams/DreamService$Injector;->createOverlayConnection(Landroid/content/ComponentName;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-virtual {v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->bind()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    :cond_1
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    return-object v1
.end method

.method public whitelist onContentChanged()V
    .locals 0

    return-void
.end method

.method public whitelist onCreate()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getDreamComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamComponent:Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v1}, Landroid/service/dreams/DreamService$Injector;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->fetchShouldShowComplications(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mShouldShowComplications:Z

    new-instance v0, Landroid/service/dreams/DreamService$2;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$2;-><init>(Landroid/service/dreams/DreamService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public whitelist onDreamingStarted()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public whitelist onDreamingStopped()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-virtual {v0}, Landroid/service/dreams/DreamOverlayConnectionHandler;->unbind()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onWakeUp()V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda2;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    :goto_0
    return-void
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this DreamService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist semSetDozeScreenBrightness(II)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    if-eq v1, p2, :cond_0

    iput p2, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    const/4 v0, 0x1

    :cond_0
    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    if-eq v1, p1, :cond_1

    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    :cond_2
    return-void
.end method

.method public whitelist setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public greylist-max-o setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    return-void
.end method

.method public greylist setDozeScreenBrightness(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightness(I)I

    move-result p1

    :cond_0
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    :cond_1
    return-void
.end method

.method public greylist setDozeScreenState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/service/dreams/DreamService;->setDozeScreenState(II)V

    return-void
.end method

.method public greylist setDozeScreenState(II)V
    .locals 1

    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iput p2, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    :cond_0
    return-void
.end method

.method public greylist setDozeScreenState(IIZ)V
    .locals 1

    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mShouldWaitForTransitionToAodUi:Z

    if-eq v0, p3, :cond_1

    :cond_0
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iput p2, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    iput-boolean p3, p0, Landroid/service/dreams/DreamService;->mShouldWaitForTransitionToAodUi:Z

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    :cond_1
    return-void
.end method

.method public greylist setDozeScreenState(IZ)V
    .locals 1

    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mShouldWaitForTransitionToAodUi:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mShouldWaitForTransitionToAodUi:Z

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    :cond_1
    return-void
.end method

.method public whitelist setFullscreen(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    const/16 v0, 0x400

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    :cond_1
    return-void
.end method

.method public whitelist setInteractive(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateAccessibilityMessage()V

    return-void
.end method

.method public whitelist setScreenBright(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mPreviewMode:Z

    if-nez v0, :cond_1

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    const/16 v0, 0x80

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    :cond_1
    return-void
.end method

.method public blacklist setWindowless(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return-void
.end method

.method public greylist startDozing()V
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    :cond_0
    return-void
.end method

.method public greylist-max-p stopDozing()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/dreams/IDreamManager;->stopDozing(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final whitelist wakeUp()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    return-void
.end method
