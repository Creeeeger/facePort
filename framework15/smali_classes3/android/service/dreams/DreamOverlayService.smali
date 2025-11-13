.class public abstract Landroid/service/dreams/DreamOverlayService;
.super Landroid/app/Service;
.source "DreamOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamOverlayService$OverlayClient;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DreamOverlayService"


# instance fields
.field private blacklist mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

.field private blacklist mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$1xf16oJYBA1fWs9kr10T5DqcknA(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->lambda$wakeUp$2(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6-su5lZIMqozAHf7Ai6EQl90kXU(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->lambda$comeToFront$3(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BaQB3Y3S2bmR-mJra1r17iLQeIM(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamOverlayService;->lambda$startDream$0(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ojEeljSqHOlL4_HLengzkVcpAnk(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->lambda$endDream$1(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcomeToFront(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->comeToFront(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mendDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->endDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamOverlayService;->startDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwakeUp(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->wakeUp(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/dreams/DreamOverlayService$1;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$1;-><init>(Landroid/service/dreams/DreamOverlayService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/dreams/DreamOverlayService$1;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$1;-><init>(Landroid/service/dreams/DreamOverlayService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private blacklist comeToFront(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda3;-><init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist endDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist endDreamInternal(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->onEndDream()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$comeToFront$3(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->onComeToFront()V

    return-void
.end method

.method private synthetic blacklist lambda$endDream$1(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->endDreamInternal(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method private synthetic blacklist lambda$startDream$0(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService;->endDreamInternal(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-virtual {p0, p2}, Landroid/service/dreams/DreamOverlayService;->onStartDream(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private synthetic blacklist lambda$wakeUp$2(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->onWakeUp()V

    return-void
.end method

.method private blacklist startDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda2;-><init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist wakeUp(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final blacklist getDreamComponent()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-static {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$mgetComponent(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requested dream component when no dream active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    invoke-interface {v0}, Landroid/service/dreams/IDreamOverlay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onComeToFront()V
    .locals 0

    return-void
.end method

.method public whitelist onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    return-void
.end method

.method public blacklist onEndDream()V
    .locals 0

    return-void
.end method

.method public abstract blacklist onStartDream(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public blacklist onWakeRequested()V
    .locals 0

    return-void
.end method

.method public blacklist onWakeUp()V
    .locals 0

    return-void
.end method

.method public final blacklist redirectWake(Z)V
    .locals 2

    invoke-static {}, Landroid/service/dreams/Flags;->dreamWakeRedirect()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-static {v0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$mredirectWake(Landroid/service/dreams/DreamOverlayService$OverlayClient;Z)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "redirected wake with no dream present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist requestExit()V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-static {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$mrequestExit(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requested exit with no dream present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist shouldShowComplications()Z
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-static {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$mshouldShowComplications(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requested if should show complication when no dream active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
