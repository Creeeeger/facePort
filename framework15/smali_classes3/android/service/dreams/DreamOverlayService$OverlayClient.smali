.class Landroid/service/dreams/DreamOverlayService$OverlayClient;
.super Landroid/service/dreams/IDreamOverlayClient$Stub;
.source "DreamOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayClient"
.end annotation


# instance fields
.field private blacklist mDreamComponent:Landroid/content/ComponentName;

.field blacklist mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

.field private final blacklist mService:Landroid/service/dreams/DreamOverlayService;

.field private blacklist mShowComplications:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetComponent(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Landroid/content/ComponentName;
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mredirectWake(Landroid/service/dreams/DreamOverlayService$OverlayClient;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->redirectWake(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestExit(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->requestExit()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldShowComplications(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Z
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->shouldShowComplications()Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/service/dreams/DreamOverlayService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlayClient$Stub;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mService:Landroid/service/dreams/DreamOverlayService;

    return-void
.end method

.method private blacklist getComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method private blacklist redirectWake(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    invoke-interface {v0, p1}, Landroid/service/dreams/IDreamOverlayCallback;->onRedirectWake(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DreamOverlayService"

    const-string v2, "could not request redirect wake"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist requestExit()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    invoke-interface {v0}, Landroid/service/dreams/IDreamOverlayCallback;->onExitRequested()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not request exit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DreamOverlayService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist shouldShowComplications()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mShowComplications:Z

    return v0
.end method


# virtual methods
.method public blacklist comeToFront()V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mService:Landroid/service/dreams/DreamOverlayService;

    invoke-static {v0, p0}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mcomeToFront(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method public blacklist endDream()V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mService:Landroid/service/dreams/DreamOverlayService;

    invoke-static {v0, p0}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mendDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method public blacklist onWakeRequested()V
    .locals 1

    invoke-static {}, Landroid/service/dreams/Flags;->dreamWakeRedirect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mService:Landroid/service/dreams/DreamOverlayService;

    invoke-virtual {v0}, Landroid/service/dreams/DreamOverlayService;->onWakeRequested()V

    :cond_0
    return-void
.end method

.method public blacklist startDream(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/IDreamOverlayCallback;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamComponent:Landroid/content/ComponentName;

    iput-boolean p4, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mShowComplications:Z

    iput-object p2, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mService:Landroid/service/dreams/DreamOverlayService;

    invoke-static {v0, p0, p1}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mstartDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public blacklist wakeUp()V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mService:Landroid/service/dreams/DreamOverlayService;

    invoke-static {v0, p0}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mwakeUp(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method
