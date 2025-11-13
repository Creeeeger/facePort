.class public abstract Landroid/service/media/MediaBrowserService;
.super Landroid/app/Service;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/MediaBrowserService$ServiceState;,
        Landroid/service/media/MediaBrowserService$ServiceBinder;,
        Landroid/service/media/MediaBrowserService$Result;,
        Landroid/service/media/MediaBrowserService$ConnectionRecord;,
        Landroid/service/media/MediaBrowserService$BrowserRoot;,
        Landroid/service/media/MediaBrowserService$ResultFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-r KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field private static final greylist-max-o RESULT_ERROR:I = -0x1

.field private static final greylist-max-o RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED:I = 0x2

.field private static final greylist-max-o RESULT_FLAG_OPTION_NOT_HANDLED:I = 0x1

.field private static final greylist-max-o RESULT_OK:I = 0x0

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaBrowserService"


# instance fields
.field private final greylist-max-o mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field private blacklist mCurrentConnectionOnHandler:Landroid/service/media/MediaBrowserService$ConnectionRecord;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final blacklist mServiceState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/service/media/MediaBrowserService$ServiceState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$b-cvjJf6gMiHdX3cuGz96Gv2Gjk(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->lambda$notifyChildrenChanged$1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBinder(Landroid/service/media/MediaBrowserService;)Landroid/service/media/MediaBrowserService$ServiceBinder;
    .locals 0

    iget-object p0, p0, Landroid/service/media/MediaBrowserService;->mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 0

    iput-object p1, p0, Landroid/service/media/MediaBrowserService;->mCurrentConnectionOnHandler:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/service/media/MediaBrowserService$ServiceState;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ServiceState-IA;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v1, p0, Landroid/service/media/MediaBrowserService;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ServiceState;

    invoke-direct {v0, v1, v2}, Landroid/service/media/MediaBrowserService$ServiceBinder;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/MediaBrowserService$ServiceBinder-IA;)V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    return-void
.end method

.method private synthetic blacklist lambda$notifyChildrenChanged$1(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    invoke-virtual {v0, p1, p2}, Landroid/service/media/MediaBrowserService$ServiceState;->notifyChildrenChangeOnHandler(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$setSessionToken$0(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/media/session/MediaSession$Token;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceState;->notifySessionTokenInitializedOnHandler(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method


# virtual methods
.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final whitelist getBrowserRootHints()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mCurrentConnectionOnHandler:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This should be called inside of onGetRoot or onLoadChildren or onLoadItem methods"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist getCurrentBrowserInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .locals 5

    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mCurrentConnectionOnHandler:Landroid/service/media/MediaBrowserService$ConnectionRecord;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    iget-object v2, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    iget v3, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pid:I

    iget v4, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->uid:I

    invoke-direct {v1, v2, v3, v4}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This should be called inside of onGetRoot or onLoadChildren or onLoadItem methods"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService$ServiceState;->-$$Nest$fgetmSession(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public whitelist notifyChildrenChanged(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public whitelist notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/media/MediaBrowserService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/media/MediaBrowserService$$ExternalSyntheticLambda1;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "options cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public abstract whitelist onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
.end method

.method public abstract whitelist onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public whitelist onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/service/media/MediaBrowserService$Result;->setFlags(I)V

    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    return-void
.end method

.method public whitelist onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/service/media/MediaBrowserService$Result;->setFlags(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist setSessionToken(Landroid/media/session/MediaSession$Token;)V
    .locals 3

    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/media/flags/Flags;->enableNullSessionInMediaBrowserService()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/service/media/MediaBrowserService$ServiceState;->-$$Nest$fgetmSession(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/media/session/MediaSession$Token;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/service/media/MediaBrowserService$ServiceState;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ServiceState-IA;)V

    iget-object v2, p0, Landroid/service/media/MediaBrowserService;->mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    invoke-virtual {v2, v1}, Landroid/service/media/MediaBrowserService$ServiceBinder;->setServiceState(Landroid/service/media/MediaBrowserService$ServiceState;)V

    iget-object v2, p0, Landroid/service/media/MediaBrowserService;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$ServiceState;->release()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Session token may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v0}, Landroid/service/media/MediaBrowserService$ServiceState;->-$$Nest$fgetmSession(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/media/session/MediaSession$Token;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v0, p1}, Landroid/service/media/MediaBrowserService$ServiceState;->-$$Nest$fputmSession(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/media/session/MediaSession$Token;)V

    iget-object v1, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/media/MediaBrowserService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Landroid/service/media/MediaBrowserService$$ExternalSyntheticLambda0;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The session token has already been set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
